<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form action="user_join_save.jsp">
		<div>아이디 : <input type="text" name="userId"></div>
		<div>패스워드 : <input type="password" name="pwd"></div>
		<div>이름 : <input type="text" name="userName"></div>
		<div>
			성별 
			<label><input type="radio" name="gender" value="남성" checked>남성</label>
			<label><input type="radio" name="gender" value="여성">여성</label>
		</div>
		<div><input type="submit" value="회원가입"></div>
	</form>
</body>
</html>