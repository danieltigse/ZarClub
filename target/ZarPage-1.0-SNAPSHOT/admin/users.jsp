<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java"  contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<title>Admin Area Users Administration</title>
	</head>
	<body>
		<h3>Admin Area Users Administration</h3>
		<p>Since our web site DOES have security, including securing areas by role,
		only logged in users with the admin role can visit this web page because it's in our admin area.</p>
		<p>Here is information on our users from the data store:</p>
		
		<c:forEach var="user" items="${userList}">
		<p>User ID: ${user.userID} <br />
		   Username: ${user.username} <br />
		   Password: ${user.password} </p>
		</c:forEach>
		<p><a href="<c:url value='/index.jsp' />">Home </a> | <a href="<c:url value='/LogoutUser' />">Log Out</a></p>
	</body>
</html>