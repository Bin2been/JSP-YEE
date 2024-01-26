<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<%
		String boardNo = request.getParameter("boardNo");
		String sql = "SELECT * FROM TBL_BOARD "
					+ "WHERE BOARDNO =" + boardNo;
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
	%>
		
	
		<form action="board_update_save.jsp">
		<input name="boardNo" value="<%= boardNo%>" hidden>
		<div>제목 : <input name="title" type="text" value="<%= rs.getString("TITLE")%>"></div>
		<div> <div>내용 : </div>
		<textarea name="contents" rows="20" cols="100"><%= rs.getString("CONTENTS")%></textarea>
		</div>
		<div>
			<input type="submit" value="수정">
			<input type="button" value="취소" onclick="history.back()">
		</div>
		</form>
</body>
</html>