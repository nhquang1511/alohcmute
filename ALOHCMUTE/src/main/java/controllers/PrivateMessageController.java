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
import entity.PrivateMessage;
import entity.User;
import service.FriendshipServicImple;
import service.IFriendshipService;
import service.IPrivateMessageService;
import service.IUserService;
import service.PrivateMessageServiceImple;
import service.UserServiceImple;
@WebServlet(urlPatterns = {"/chat"})
public class PrivateMessageController extends HttpServlet{
	/**
	 * 
	 */
	IPrivateMessageService messageService = new PrivateMessageServiceImple();
	IFriendshipService friendshipservice = new FriendshipServicImple();
	IUserService userservice = new UserServiceImple();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if(url.contains("chat"))
		{
			HttpSession session = req.getSession();
			
			// Lấy giá trị từ session
			Integer userID1 = (Integer) session.getAttribute("userID");
			
			session.setAttribute("receiverUserID", req.getParameter("userid"));
			
			User user1 = userservice.findById(userID1);
			
			
			
			User user2 = userservice.findById(Integer.parseInt(req.getParameter("userid")));
			
			List<User> listfriend = new ArrayList<User>();
			List<Friendship> list = friendshipservice.findAll();
			for(Friendship friend: list)
			{
				if(friend.getUser1().getUserID()==userID1)
				{
					listfriend.add(friend.getUser2());
				}
			}
			
			
			List<PrivateMessage> listmes = messageService.listMessage(user1, user2);
			
			req.setAttribute("listmes", listmes);
			req.setAttribute("listfriend", listfriend);
			req.getRequestDispatcher("/view/sociala/default-message.jsp").forward(req, resp);
		}
//		List<PrivateMessage> messages = messageService.findAll();
//		req.setAttribute("messages", messages);
//
//        // Forward the request to the JSP page
//        req.getRequestDispatcher("/view/chat.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURL().toString();
		if(url.contains("chat"))
		{
			HttpSession session = req.getSession();
			
			// Lấy giá trị từ session
			Integer userID1 = (Integer) session.getAttribute("userID");
			User user1 = userservice.findById(userID1);
			
			
			
			String value = (String) session.getAttribute("receiverUserID");
			
			User user2 = userservice.findById(Integer.parseInt(value));
			
	        String messageContent = req.getParameter("messageContent");
	        System.out.println(messageContent);
	        System.out.println(value);
	        System.out.println(userID1);
	        PrivateMessage message = new PrivateMessage();
	        message.setUser1(user1);
	        message.setUser2(user2);
	        message.setMessageContent(messageContent);

	        // Insert the message into the database
	        messageService.insert(message);

	        // Redirect to the chat page
	        resp.sendRedirect("chat?userid="+value);
		}
		
	}
}
