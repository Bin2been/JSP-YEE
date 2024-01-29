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
		String sql = "DELETE FROM STUDENT WHERE STU_NO= '" + stuno + "'";
		
		stmt.executeUpdate(sql);
	%>
<script>
	alert("삭제되었습니다.");
	location.href="stu_list.jsp";
</script>
</body>
</html>