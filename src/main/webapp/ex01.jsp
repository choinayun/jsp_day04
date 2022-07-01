<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDAO"%>
<%@page import="DBPKG.DBConnect"%>
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
		// 사용자에 대한 정보 
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> list = dao.getNewSt();  
		
		for(MemberDTO dto : list) { %> 
		
			<a href="info.jsp?id=<%= dto.getId() %>">
				<%= dto.getId() %> 
			</a><br>
			<%= dto.getName()%><br>
			<%= dto.getAge()%><hr>
			
		<% }%>
	
	
</body>
</html>