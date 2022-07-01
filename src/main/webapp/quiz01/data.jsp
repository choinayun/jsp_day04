<%@page import="quiz01.StudentDTO"%>
<%@page import="quiz01.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>인적 사항</h2>
	
	<b>
	학번 : <%= request.getParameter("id")%><br>
	
	<% 
		StudentDAO dao = new StudentDAO();
		StudentDTO d = dao.getUser( request.getParameter("id") );
	%>
	
	이름 : <%= d.getName() %><br>
	국,영,수 : <%= d.getKor() %>, <%= d.getEng()%>, <%= d.getMath() %><br>
	</b>
	
	<input type="button" value="뒤로" onclick="history.back()">

</body>
</html>