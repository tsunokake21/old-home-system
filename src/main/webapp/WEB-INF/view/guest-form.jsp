<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Guest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規会員登録</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Guest gu = (Guest)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="TourokuServlet" method="post">
			名前：<input type="text" name="name" value="<%=gu.getName()%>"><br>
			メール：<input type="email" name="mail" value="<%=gu.getMail()%>"><br>
			パスワード：<input type="password" name="pass"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="TourokuServlet" method="post">
		名前：<input type="text" name="name"><br>
		メール：<input type="email" name="mail"><br>
		パスワード：<input type="password" name="pass"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>