<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	id : <%= request.getParameter("id") %>
	<% 
		MemberDAO dao = new MemberDAO();
		MemberDTO d = dao.getUser( request.getParameter("id") );
	%>
	<hr>
		아이디 : <%=d.getId() %><br>
		이름 : <%=d.getName() %><br>
		나이 : <%=d.getAge() %><br>
		
</body>
</html>