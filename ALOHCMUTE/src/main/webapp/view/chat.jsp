<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chat Application</title>
    <style>
        .left { text-align: left; }
        .right { text-align: right; }
    </style>
</head>
<body>
    <h1>Chat Conversation</h1>

    <%-- Display the chat conversation --%>
    <ul>
        <c:forEach var="i" items="${messages}">
            <li class="${i.messageID % 2 == 0 ? 'right' : 'left'}">${i.messageID}: ${i.messageContent}</li>
        </c:forEach>
    </ul>

    <%-- Form to send new messages --%>
    <form action="ChatServlet" method="post">
        Sender UserID: <input type="text" name="senderUserID"><br>
        Receiver UserID: <input type="text" name="receiverUserID"><br>
        Message: <input type="text" name="messageContent"><br>
        <input type="submit" value="Send Message">
    </form>
</body>
</html>
