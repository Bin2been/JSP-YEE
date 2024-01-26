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
		<div>
			아이디 : <input name="userId" type="text">
		</div>
		<div>
			비밀번호 : <input name="pwd" type="password">
		</div>
		<div>
			이름 : <input name="userName" type="text">
		</div>
		<div>성별
			<div>
				<label>남자 : <input type="radio" name="gender" value="남자" checked></label>
				<label>여자 : <input type="radio" name="gender" value="여자"></label>
			</div>
		</div>
		<div>
			<input type="submit" value="회원가입">
		</div>
	</form>
</body>
</html>