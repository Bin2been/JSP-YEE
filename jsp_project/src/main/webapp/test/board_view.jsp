<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, tr, td {
		border : 1px solid black;
		padding : 5px 10px;
		border-collapse: collapse;
		text-align: center;
	}
	table{
		width : 800px;
	}
	th {
		background-color: #eee;
		width : 25%;
	}
	td{
		width : 75%;
	}
</style>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<%	
		String boardNo = request.getParameter("boardNo");
		stmt.executeUpdate(
				"UPDATE TBL_BOARD SET"
				+ " HIT = HIT+1"
				+ " WHERE BOARDNO = " + boardNo
				);
		ResultSet rs = stmt.executeQuery(
				"SELECT * FROM TBL_BOARD B "
				+ "INNER JOIN TBL_MEMBER M ON B.USERID = M.USERID "
				+ "WHERE BOARDNO = '" + boardNo + "'"
				);
			rs.next();
	%>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><%= rs.getString("TITLE") %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%= rs.getString("USERNAME") %></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%= rs.getString("HIT") %></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%= rs.getString("UDATETIME") %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><%= rs.getString("CONTENTS") %></td>
		</tr>
	</table>
	<input type="button" onclick="boardDelete(<%=boardNo%>)" value="삭제">
	<span><input type="button" onclick="" value="수정"></span>
</body>
</html>
<script>
	function boardDelete(boardNo){
		if(confirm("정말 삭제 할꺼임?")){
			location.href="board_delete.jsp?boardNo=" + boardNo;
		}
	}
</script>


