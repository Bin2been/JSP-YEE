<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="check">
	<%@ include file="dbcoon.jsp"%>
	<%
		String userId = request.getParameter("userId");
		String sql 
		= "SELECT * FROM TBL_MEMBER "
		+ "WHERE USERID = '"
		+ userId + "'";
		
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.next()){
			out.println("중복된 아이디 있음");
			out.println("<input name='userId'>");
			out.println("<input type='button' value='중복체크' onclick='idCheck()'>");
		} else {
			out.println("사용 가능");
		}
	%>
	<input type="button" value="닫기" onclick="popClose('<%=userId%>')">	
</form>	
</body>
</html>
<script>
	function popClose(userId){
		opener.document.join.userId.value = userId;
		window.close();
	}
	function idCheck(){
		location.href="user_idCheck.jsp?userId="
			+ document.check.userId.value;
	}
</script>
