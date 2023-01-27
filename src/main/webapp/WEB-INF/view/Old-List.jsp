<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Old" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>名前</th>
			<th>年齢</th>
			<th>性別</th>
		</tr>
	<%
	

		List<dto.Old> list = (ArrayList<dto.Old>)request.getAttribute("list");
		for(dto.Old s : list) {
	%>
		<tr>
			<td><%=s.getId() %></td>
			<td><%=s.getName() %></td>
			<td><%=s.getAge() %></td>
			<td><%=s.getGender() %></td>
		</tr>
	<%} %>
	</table>
	
	<a href="./">戻る</a>
</body>
</html>