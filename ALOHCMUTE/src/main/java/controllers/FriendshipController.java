package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Friendship;
import entity.User;
import service.FriendshipServicImple;
import service.IFriendshipService;
import service.IUserService;
import service.UserServiceImple;

@WebServlet(urlPatterns = { "/listfriend","/deletefriend"})
public class FriendshipController extends HttpServlet{

	/**
	 * 
	 */
	IUserService userservice = new UserServiceImple();
	IFriendshipService friendshipservice = new FriendshipServicImple();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = req.getRequestURL().toString();
		if(url.contains("listfriend"))
		{
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
			req.getRequestDispatcher("/view/sociala/default-member.jsp").forward(req, resp);
		}
		if(url.contains("deletefriend"))
		{
			User user1 = userservice.findById(Integer.parseInt(req.getParameter("userid")));
			User user2 = userservice.findById((Integer) req.getSession().getAttribute("userID"));

			System.out.println("user1: " + user1.getUserID());
			System.out.println("user2: " + user2.getUserID());

			List<Friendship> list = friendshipservice.findByUsername(user1.getUserID(), user2.getUserID());

			if (list != null) {
			    for (Friendship f : list) {
			        try {
			            friendshipservice.delete(f.getFriendshipID());
			        } catch (Exception e) {
			            e.printStackTrace();
			        }
			    }
			} else {
			    System.out.println("Friendship list is null.");
			}

			resp.sendRedirect("listfriend");

			
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
