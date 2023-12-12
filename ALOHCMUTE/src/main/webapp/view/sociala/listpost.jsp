<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty message }">${message }</c:if>
	<c:if test="${not empty error }">${error }</c:if>
	<table border="1" style="width: 100%">

		<thead>
			<th>PostID</th>
			<th>Content</th>
			<th>PostTime</th>
			<th>ImageVideoURL</th>
			<th>Likes</th>
			<th>Comments</th>
			<th>UserID</th>

		</thead>
		<tbody>
			<c:forEach var="i" items="${listpost}">
				<tr>
					<td>${i.postID}</td>
					<td>${i.content}</td>
					<td>${i.postTime}</td>
					<td>${i.imageVideoURL}</td>
					<td>${i.likes}</td>
					<td>${i.comments}</td>
					<td>${i.user.userID}</td>
					<td>
					<td><a href="<c:url value='/admin-deletePost?id=${i.postID}'/>">Delete</a>||
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>