<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.login {
		color : "red"
	}
</style>
</head>
<body>
	<h1>로그인 확인</h1>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if (id.equals("test") && pwd.equals("1234")) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}
	%>
</body>
</html>
