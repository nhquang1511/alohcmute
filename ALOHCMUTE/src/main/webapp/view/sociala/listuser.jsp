<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <c:if test="${Not empty message}"> --%>
	<c:if test="${message != null}">
		<span>${message }</span>
	</c:if>

	<c:if test="${error != null}">
		<span>${error }</span>
	</c:if>

	<table border="1" style="width: 100%">
		<tr>
			<td>UserID</td>
			<td>UserName</td>
			<td>Email</td>
			<td>AvatarURL</td>
			<td>Action</td>
		</tr>
		<c:forEach var="i" items="${listuser}">
			<tr>
				<td>${i.userID}</td>
				<td>${i.userName}</td>
				<td>${i.email}</td>
				<td>${i.avatarURL}</td>
				
				
				<td> <a href="<c:url value='/admin-deleteUser?id=${i.userID}'/>">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>