package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.PrivateMessage;
import service.IPrivateMessageService;
import service.PrivateMessageServiceImple;
@WebServlet(urlPatterns = {"/message"})
public class PrivateMessageController extends HttpServlet{
	/**
	 * 
	 */
	IPrivateMessageService messageService = new PrivateMessageServiceImple();
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<PrivateMessage> messages = messageService.findAll();
		req.setAttribute("messages", messages);

        // Forward the request to the JSP page
        req.getRequestDispatcher("/view/chat.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int senderUserID = Integer.parseInt(req.getParameter("senderUserID"));
        int receiverUserID = Integer.parseInt(req.getParameter("receiverUserID"));
        String messageContent = req.getParameter("messageContent");

        PrivateMessage message = new PrivateMessage();
        message.setUser1(null);
        message.setUser2(null);
        message.setMessageContent(messageContent);

        // Insert the message into the database
        PrivateMessageDAO.insertMessage(message);

        // Redirect to the chat page
        response.sendRedirect("ChatServlet");
	}
}
