<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td {
	border: 1px solid black;
	padding: 5px 10px;
	border-collapse: collapse;
	text-align: center;
}

th {
	background-color: #eee;
}

.info {
	display: block;
}
</style>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<%
	String stuno = request.getParameter("stuno");
	String sql = "SELECT * FROM STUDENT WHERE STU_NO='" + stuno + "'";

	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	%>
	<form name="show">
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
			</tr>
			<tr>
				<td><%=rs.getString("STU_NO")%></td>
				<td>
					<span class="info"><%=rs.getString("STU_NAME")%></span>
				</td>
				<td>
					<span class="info"><%=rs.getString("STU_DEPT")%></span>
				</td>
			</tr>
		</table>
		<div>
			<input type="button" value="수정" onclick="fnupdate()">
			
			<input type="button" value="삭제" onclick="fndelete()">
		</div>
	</form>
</body>
</html>
<script>
	function fndelete() {
		if (confirm("삭제할꺼?")) {
			location.href = "stu_delete.jsp?stuno=" +
<%=stuno%>
	;
		}
	}
	function fnupdate() {
		location.href = "stu_update.jsp?stuno=" +
		<%=stuno%>
	}
</script>
