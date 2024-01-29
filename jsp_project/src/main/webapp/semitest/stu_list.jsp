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
	th {
		background-color: #eee;
	}
	a:hover{
		color : blue;
		font-weight: bold;
	}
</style>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<%
		String sql
		= "SELECT * FROM STUDENT "
		;

		ResultSet rs = stmt.executeQuery(sql);
	%>
	<form>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
			</tr>
	<%
		while(rs.next()){		
	%>
			<tr>
				<td><%= rs.getString("STU_NO") %></td>
				<td><a onclick="list('<%= rs.getString("STU_NO") %>')" style="cursor:pointer; text-decoration: none;"><%= rs.getString("STU_NAME") %></a></td>
				<td><%= rs.getString("STU_DEPT") %></td>
			</tr>
	<%
		}	
	%>	
		</table>
		<input type="submit" value="학생추가" formaction="stu_list_submit.jsp">
	</form>
</body>
</html>
<script>
	function list(stuno) {
		location.href="stu_list_view.jsp?stuno=" + stuno;
	}
</script>