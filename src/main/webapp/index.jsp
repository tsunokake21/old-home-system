<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>老人管理システム</title>
<link rel=icon” href=“/image/favicon.ico”>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
		<p style="color:red">ログインに失敗しました。</p>
	<form action="LoginServlet" method="post">
		【メールアドレスとパスワードを入力してください。】<br>
		メールアドレス：<input type="email" name="mail" value="<%=request.getParameter("mail") %>"><br>
		パスワード：<input type="password" name="pass"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="GuestFormServlet">新規登録はこちら</a>
	<%
		} else {
	%>
	<form action="LoginServlet" method="post">
		【メールアドレスとパスワードを入力してください。】<br>
		メールアドレス：<input type="email" name="mail"><br>
		パスワード：<input type="password" name="pass"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="GuestFormServlet">新規登録はこちら</a>
	<%
		}
	%>	
</body>
</html>