<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>削除フォーム</title>
</head>
<body>
	<h1>削除フォーム</h1>
	<form action="DeleteServlet" method="post">
	ID :<input type="text" name="id">
	<input type="submit" value="削除">
	</form>

</body>
</html>