<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="login" action="form_view1.jsp" method="post">
	<div>아이디 : <input type="text" name="id"></div>
	<div>패스워드 : <input type="password" name="pwd"></div>
	<div><input type="button" onclick="check()" value="로그인"></div>
	
</form>
</body>
</html>
<script>
	function check() {
		
		var login = document.login;
		if (login.id.value == "") {
			alert("아이디를 확인하세요.");
			login.id.focus();
			return;
		}

		if (login.pwd.value == "") {
			alert("패스워드를 확인하세요.");
			login.pwd.focus();
			return;
		}
		
		login.submit();
	}
</script>