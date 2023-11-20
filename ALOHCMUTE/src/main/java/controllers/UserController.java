package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.IUserService;
import service.UserServiceImple;

@WebServlet(urlPatterns = {"/register","/login"})
public class UserController extends HttpServlet{

	/**
	 * 
	 */
	IUserService userService = new UserServiceImple();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if(url.contains("register"))
		{
			resp.sendRedirect("/ALOHCMUTE/view/sociala/register.jsp");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if(url.contains("register"))
		{
			User user = new User();
			user.setEmail(req.getParameter("email"));
			user.setUserName(req.getParameter("name"));
			user.setPassword(req.getParameter("password"));
			userService.insert(user);
			PrintWriter out = resp.getWriter();
			 out.println("<p>" + "insert thanh cong" + "</p>");
		}
	}
}
