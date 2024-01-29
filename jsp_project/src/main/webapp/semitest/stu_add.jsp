<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbcoon.jsp" %>
<%
	String stuno = request.getParameter("stuno");
	String stuname = request.getParameter("stuname");
	String studept = request.getParameter("studept");
	
	String sql
	= "INSERT INTO STUDENT ( STU_NO, STU_NAME, STU_DEPT) VALUES('"+stuno+"','"+stuname+"','"+studept+"')";
	
	stmt.executeUpdate(sql);
%>
<script>
	alert("추가 완료!");
	location.href="stu_list.jsp";
</script>
</body>
</html>
