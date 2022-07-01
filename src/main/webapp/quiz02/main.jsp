<%@page import="quiz02.MembersDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="quiz02.MembersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		MembersDAO dao = new MembersDAO();
		ArrayList<MembersDTO> list = dao.getMembers();
	%>

</body>
</html>