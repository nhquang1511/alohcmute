package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		else if(url.contains("login"))
		{
			resp.sendRedirect("/ALOHCMUTE/view/sociala/login.jsp");
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
			 out.println("<p>" + "dang ky thanh cong" + "</p>");
		}
		else if(url.contains("login"))
		{
			String email = req.getParameter("email");
	        String password = req.getParameter("password");
	        
	        List<User> userList  = userService.findAll();
	        
	        boolean checklogin = false;
	        for (User user : userList ) {
	            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
	            	checklogin = true;
	                break;
	            }
	        }

	        
	        if (checklogin) {
	            // Redirect to a success page or perform other actions (e.g., setting up a session)
	        	HttpSession session = req.getSession();
                session.setAttribute("userEmail", email);
                resp.sendRedirect("/ALOHCMUTE/view/sociala/home.jsp");
//	        	PrintWriter out = resp.getWriter();
//				 out.println("<p>" + "login thanh cong" + "</p>");
	        } else {
	            // If validation fails, redirect back to the login page with an error message
	            resp.sendRedirect("/ALOHCMUTE/view/sociala/login.jsp?error=1");
	        }
		}
	}
}
