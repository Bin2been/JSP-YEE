<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
		String lower(String str){
			return str.toLowerCase();
		}
	%>
	
	<%= lower("Test") %>
	
	
	
</body>
</html>