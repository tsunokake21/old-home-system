<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.Guest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ホーム画面</title>
</head>
<body>
	<%
	Guest gu = (Guest) session.getAttribute("user");
	%>
	<h3>図書管理システム</h3>
	<p>ようこそ<%=gu.getName() %>さん</p>
	<a href="RegisterBookServlet">図書登録</a><br>
	<a href="BookListServlet">図書一覧</a><br>
	<a href="LogoutServlet">ログアウト</a>
</body>
</html>