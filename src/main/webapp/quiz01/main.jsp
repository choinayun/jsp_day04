<%@page import="quiz01.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.rmi.StubNotFoundException"%>
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

		<% 
			StudentDAO dao = new StudentDAO(); %>
		
		<table border="1">
				<tr>
					<td>학번</td><td>이름</td><td>국어</td><td>영어</td><td>수학</td>
				</tr>
		
				<% 	ArrayList<StudentDTO> list = dao.getStudent(); 
					for(StudentDTO dto : list) { 
				%>	
				<tr>
					<td> 
					<%= dto.getId() %></td>
					<td>
					 	<a href="data.jsp?id=<%= dto.getId() %>">	
						<%= dto.getName() %>
						</a>
					</td>
					<td><%= dto.getKor() %></td>
					<td><%= dto.getEng() %></td>
					<td><%= dto.getMath() %></td>
				</tr>
		
		<% } %>
	</table>
			

</body>
</html>