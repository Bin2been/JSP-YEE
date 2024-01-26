<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div{
		font-size: 20px;
		font-weight: bold;
	}
</style>
</head>
<body>
	<form action="board_add_save.jsp">
	<div>제목 : <input name="title" type="text"></div>
	<div> <div>내용 : </div>
		<textarea name="contents" rows="20" cols="100"></textarea>
	</div>
	<div>
		<input type="submit" value="작성">
		<input type="button" value="취소" onclick="history.back()">
	</div>
	</form>
</body>
</html>