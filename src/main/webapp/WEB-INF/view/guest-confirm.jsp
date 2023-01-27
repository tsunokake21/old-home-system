<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Guest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録内容確認</title>
</head>
<body>
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
		Guest guest = (Guest)session.getAttribute("input_data");
	%>
	名前：<%=guest.getName() %><br>
	メール：<%=guest.getMail() %><br>
	パスワード：***********<br>
	<a href="GuestExecuteServlet">OK</a><br>
	<a href="GuestFormServlet">戻る</a>
</body>
</html>