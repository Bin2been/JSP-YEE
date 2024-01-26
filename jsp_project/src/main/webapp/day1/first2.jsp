<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first jsp</title>
</head>
<body>
	<%!
		int z = 0;
		int sum(int x, int y) {
			return x+y;
		};
	%> <!-- 변수 선언, 메소드 작성 -->
	
	<%
		Calendar c = Calendar.getInstance();
		for(int i = 1; i<= 10; i++){
			out.println(i + "<br>");
		};
	%> <%-- 변수 선언, 자바 로직 작성 --%>	
	
	<h1><%= sum(1,2) %></h1> <!-- 결과 출력 -->
	
	
</body>
</html>