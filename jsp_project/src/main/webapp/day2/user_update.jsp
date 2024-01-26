<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<%
	String userId = request.getParameter("userId");

	String sql = "SELECT * FROM TBL_MEMBER WHERE USERID = '" + userId + "'";
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	%>

	<form action="user_update_result.jsp">
		<input name="userId" value="<%=rs.getString("userId")%>" hidden
			type="text">
		<div>
			아이디 : <input value="<%=rs.getString("userId")%>" disabled type="text">
		</div>
		<div>
			비밀번호 : <input name="pwd" type="password">
		</div>
		<div>
			이름 : <input name="userName" type="text"
				value="<%=rs.getString("userName")%>">
		</div>
		<div>
			성별
		<%
			if (rs.getString("gender").equals("남자")) {
		%>
			<label>남자 : <input type="radio" name="gender" value="남자" checked></label>
			<label>여자 : <input type="radio" name="gender" value="여자"></label>
		<%
			} else {
		%>
			<label>남자 : <input type="radio" name="gender" value="남자"></label>
			<label>여자 : <input type="radio" name="gender" value="여자" checked></label>
		<%
			}
		%>
		
		</div>
		<div>
			<input type="submit" value="수정">
		</div>
	</form>



</body>
</html>