package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import entity.Post;

import service.*;
import util.uploadCloud;

@MultipartConfig
@WebServlet(urlPatterns = { "/home", "/updatePost", "/insertPost", "/deletePost" })
public class PostController extends HttpServlet {

	/**
	 * 
	 */
	IPostService postService = new PostSeviceImpl();
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
		
		Post post = new Post();
		String content = req.getParameter("content");
		post.setContent(content);
		
		
		Part filePart = req.getPart("imageVideoURL");
		String fileName = filePart.getSubmittedFileName();
		// tao bien url chua link anh
		String urlvArtar = uploadCloud.upload(fileName);
		
		post.setImageVideoURL(urlvArtar);
		postService.insert(post);

	}

	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Post> listPost = postService.findAll();
		req.setAttribute("listpost", listPost);
		RequestDispatcher rd = req.getRequestDispatcher("/view/sociala/home.jsp");
		rd.forward(req, resp);
		for (Post element : listPost) {
			System.out.println(element.getContent());
			System.out.println(element.getPostTime());
		}

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

		}
	}
}
