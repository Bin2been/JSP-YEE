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
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwd1 = request.getParameter("pwd1");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String comment = request.getParameter("comment");
	%>

	<div>아이디 :<%=id%></div>
	<div>비밀번호 :<%=pwd%></div>
	<div>비번확인 :<%=pwd1%></div>
	<div>이름 :<%=name%></div>
	<div>연락처 :<%=phone1%>-<%=phone2%>-<%=phone3%></div>
	<div>성별 :<%=gender%></div>
	<div>
		취미 :
		<%
	for (int i = 0; i < hobby.length; i++) {
		out.print(hobby[i] + " ");
	}
	%>
	</div>
	<div>가입 인사<%=comment%></div>
</body>
</html>