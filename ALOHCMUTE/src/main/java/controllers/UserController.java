package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import entity.Friendship;
import entity.User;
import service.FriendshipServicImple;
import service.IFriendshipService;
import service.IUserService;
import service.UserServiceImple;
import util.uploadCloud;

@MultipartConfig
@WebServlet(urlPatterns = { "/register", "/login", "/updateuser" })
public class UserController extends HttpServlet {

	/**
	 * 
	 */
	IUserService userService = new UserServiceImple();

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if (url.contains("register")) {
			resp.sendRedirect("/ALOHCMUTE/view/sociala/register.jsp");
		} else if (url.contains("login")) {
			resp.sendRedirect("/ALOHCMUTE/view/sociala/login.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if (url.contains("register")) {
			String email = req.getParameter("email");
			List<User> userList = userService.findAll();
			boolean check = false;

			for (User user : userList) {
				if (user.getEmail().equals(email)) {
					check = true;
					break;
				}
			}
			if(check==false) {
				User user = new User();
				user.setEmail(req.getParameter("email"));
				user.setUserName(req.getParameter("name"));
				user.setPassword(req.getParameter("password"));
				user.setAvatarURL("https://th.bing.com/th/id/R.910cabc7d55bb965d6c42571a2b7973a?rik=HRpRhGm%2fnmbF8g&pid=ImgRaw&r=0");
				
				userService.insert(user);
//				PrintWriter out = resp.getWriter();
//				out.println("<p>" + "dang ky thanh cong" + "</p>");
				resp.sendRedirect("login");
			}else {
				resp.sendRedirect("register");
				
			}
			
		} 
		else if (url.contains("login")) {
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			List<User> userList = userService.findAll();

			User loggedInUser = null;

			for (User user : userList) {
				if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
					loggedInUser = user;
					break;
				}
			}

			if (loggedInUser != null) {
				// Lưu userID vào session
				HttpSession session = req.getSession();
				session.setAttribute("userID", loggedInUser.getUserID());
				session.setAttribute("AvatarURL", loggedInUser.getAvatarURL());
				session.setAttribute("UserName", loggedInUser.getUserName());
				session.setAttribute("userEmail", email);
				
				resp.sendRedirect("/ALOHCMUTE/home");
			} else {
				resp.sendRedirect("/ALOHCMUTE/view/sociala/login.jsp?error=1");
			}
		}

		else if (url.contains("updateuser")) {
//-------------------------------------lay anh tu form--------------
			Part filePart = req.getPart("file");
			String fileName = filePart.getSubmittedFileName();
			// tao bien url chua link anh
			String urlvArtar = uploadCloud.upload(fileName);
//--------------------------------------------------------
			
			
			HttpSession session = req.getSession();
			int userID = (int) session.getAttribute("userID");
			
			User user = userService.findById(userID);
			user.setAvatarURL(urlvArtar);
			
			session.setAttribute("AvatarURL", urlvArtar);
			user.setUserName(req.getParameter("name1"));
			session.setAttribute("UserName", req.getParameter("name1"));
			userService.update(user);
//			PrintWriter out = resp.getWriter();
//			out.println("<p>" + "update thanh cong " + user.getUserName() + "</p>");
			resp.sendRedirect("/ALOHCMUTE/view/sociala/account-information.jsp");
		}
	}
}
