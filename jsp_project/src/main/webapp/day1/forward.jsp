<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");%>
	<div>메소 언제벌어</div>
	<jsp:forward page="forward_view.jsp">
		<jsp:param value="홍길동" name="name"></jsp:param>
		<jsp:param value="hong123" name="id"></jsp:param>
	</jsp:forward>
	
	
	
</body>
</html>