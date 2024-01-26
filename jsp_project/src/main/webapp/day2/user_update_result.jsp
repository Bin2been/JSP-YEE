<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 완료창</title>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<% 
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String pwdStr = "";
		
		if(pwd != null || !pwd.equals("")){
			pwdStr = "PWD = '" + pwd + "',";
		}
		
		String sql
			= "UPDATE TBL_MEMBER SET "
			+ pwdStr
			+ "GENDER = '" + gender + "',"
			+ "USERNAME = '" + userName + "'"
			+ "WHERE USERID = '" + userId + "'";
					
		stmt.executeUpdate(sql);
		out.println("수정되었습니다.");
		
	%>
</body>
</html>