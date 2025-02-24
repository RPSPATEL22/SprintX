<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
		<title>Profile</title>
	</head>
	<body>
		<h2>Welcome, ${sessionScope.username}</h2>
		<p>Email: ${sessionScope.email}</p>
		<a href="logout.jsp">Logout</a>
	</body>
	</html