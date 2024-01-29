<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 추가</title>
</head>
<body>
	<%@ include file="dbcoon.jsp"%>
	<% 
		String stuNo = request.getParameter("stuNo");
		String stuName = request.getParameter("stuName");
		String stuDept = request.getParameter("stuDept");
		String sql 
		= "UPDATE STUDENT SET"
		+ " STU_NAME = '" + stuName + "',"
		+ " STU_DEPT = '" + stuDept + "'"
		+ " WHERE STU_NO = " + stuNo;
		
		stmt.executeLargeUpdate(sql);
	%>
	<form action="stu_add.jsp" name="add">
	<div>학번 : <input type="text" name="stuno"></div>
	<div>이름 : <input type="text" name="stuname"></div>
	<div>학과 : <input type="text" name="studept"></div>
	<div><input type="button" value="저장" onclick="fnaddstu()"></div>
	</form>
</body>
</html>
<script>
	function fnaddstu(){
		console.log(document.add.stuno.value.length);
		 if(document.add.stuno.value.length != 8){
			alert("학번은 8자리만 가능~");
			return;
		} else if(document.add.stuname.value == ""){
			alert("이름빈값 불가능~");
			return;
		} else if(document.add.studept.value == ""){
			alert("학과빈값 불가능~");
			return;
		}
		 document.add.submit()
	}
</script>
