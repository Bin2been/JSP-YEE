<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	Connection coon;
	Statement stmt = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String db_url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String db_id = "system";
	String db_pw = "test1234";
	coon = DriverManager.getConnection(db_url, db_id, db_pw);
	stmt = coon.createStatement();
	
%>
</body>
</html>