package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import entity.Comment;
import entity.Friendship;
import entity.Post;
import entity.User;
import service.*;
import util.uploadCloud;
import java.sql.Timestamp;

@MultipartConfig
@WebServlet(urlPatterns = { "/home", "/updatePost", "/insertPost", "/deletePost", "/listComment", "/addComment",
		"/deleteComment" })
public class PostController extends HttpServlet {

	/**
	 * 
	 */
	IPostService postService = new PostSeviceImpl();
	IUserService userService = new UserServiceImple();
	IFriendshipService friendshipservice = new FriendshipServicImple();
	ICommentService commentService = new CommentService();
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if (url.contains("home")) {

			findAll(req, resp);
		} else if (url.contains("updatePost")) {
			updatePost(req, resp);
		} else if (url.contains("deletePost")) {
			deletePost(req, resp);
		}

	}

	private void deletePost(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void updatePost(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void insertPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		int userID = (int) session.getAttribute("userID");
		Post post = new Post();
		String content = req.getParameter("content");
		post.setContent(content);
		User user = userService.findById(userID);
		post.setUser(user);
		Part filePart = req.getPart("imageVideoURL");
		String fileName = filePart.getSubmittedFileName();
		// tao bien url chua link anh
		String urlvArtar = uploadCloud.upload(fileName);

		post.setImageVideoURL(urlvArtar);
		Timestamp postTime = new Timestamp(System.currentTimeMillis());
		post.setPostTime(postTime);
		postService.insert(post);

	}

	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Post> listPost = postService.findAll();
		listPost = listPost.stream().filter(post -> post.getPostTime() != null)
				.sorted(Comparator.comparing(Post::getPostTime).reversed()).collect(Collectors.toList());
		req.setAttribute("listpost", listPost);
		// --------------listfriend----------------
		HttpSession session = req.getSession();

		// Lấy giá trị từ session
		Integer userIDInt = (Integer) session.getAttribute("userID");
		List<User> listfriend = new ArrayList<User>();
		List<Friendship> list = friendshipservice.findAll();
		for (Friendship friend : list) {
			if (friend.getUser1().getUserID() == userIDInt) {
				listfriend.add(friend.getUser2());
			}
		}

		req.setAttribute("listfriend", listfriend);
		for (User user : listfriend) {
			int id = user.getUserID();
			req.setAttribute("id", id);
			break;
		}
		// -------------------------------------------
		RequestDispatcher rd = req.getRequestDispatcher("/view/sociala/home.jsp");
		rd.forward(req, resp);
//		for (User element : listfriend) {
//			System.out.println(element.getAvatarURL());
//			System.out.println(element.getEmail());
//		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String requestType = req.getHeader("X-Request-Type");

		if ("HandleMatch".equals(requestType)) {

		} else {
			doGet(req, resp);
		}

		String url = req.getRequestURL().toString();
		if (url.contains("insertPost")) {

			insertPost(req, resp);
			req.getRequestDispatcher("home").forward(req, resp);
		} else if (url.contains("updatePost")) {
			// -------------------------------------lay anh tu form--------------
			Part filePart = req.getPart("imageVideoURL");
			String fileName = filePart.getSubmittedFileName();
			// tao bien url chua link anh
			String urlImgPost = uploadCloud.upload(fileName);
			// --------------------------------------------------------

			HttpSession session = req.getSession();
			int userID = (int) session.getAttribute("userID");
			int postID = Integer.parseInt(req.getParameter("postID"));
			System.out.println(postID);
			User user = userService.findById(userID);
			Post post = postService.findById(postID);
			post.setImageVideoURL(urlImgPost);

			post.setContent(req.getParameter("content"));
			post.setImageVideoURL(urlImgPost);
			postService.update(post);
//						PrintWriter out = resp.getWriter();
//						out.println("<p>" + "update thanh cong " + user.getUserName() + "</p>");
			resp.sendRedirect("/ALOHCMUTE/home");
		} else if (url.contains("listComment")) {
			try {
				int postID = Integer.parseInt(req.getParameter("postID"));
				System.out.println(postID);
				// Assuming you have a PostService that retrieves comments for a post
				List<Comment> comments = commentService.findByID(postID);
				// req.getSession().setAttribute("comments", comments);
				Collections.sort(comments, Comparator.comparing(Comment::getCommentTime).reversed());
				req.getSession().setAttribute("sortedComments", comments);
				resp.sendRedirect("/ALOHCMUTE/home");

			} catch (Exception e) {
				e.printStackTrace();
				resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching comments");
			}
		} else if (url.contains("addComment")) {

			addComment(req, resp);
			resp.sendRedirect("/ALOHCMUTE/home");

		} else if (url.contains("deleteComment"))

		{

			try {
				delComment(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}

	private void delComment(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int commentID = Integer.parseInt(req.getParameter("commentID"));
		commentService.delete(commentID);
		resp.getWriter().write("Comment deleted successfully");
		resp.sendRedirect("/ALOHCMUTE/home");
		
	}

	private void addComment(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		int userID = (int) session.getAttribute("userID");
		Comment cmt = new Comment();
		String content = req.getParameter("content");
		cmt.setContent(content);
		User user = userService.findById(userID);
		cmt.setUser(user);
		int postID = Integer.parseInt(req.getParameter("postID"));
		Post post = postService.findById(postID);
		Timestamp postTime = new Timestamp(System.currentTimeMillis());
		cmt.setCommentTime(postTime);
		cmt.setPost(post);
		commentService.insert(cmt);
		resp.getWriter().write("Comment added successfully");

	}
}