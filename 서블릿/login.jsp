<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!String id;
	String pw;
%>
<%
	id = session.getAttribute("id").toString();
	pw = session.getAttribute("pw").toString();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>
		환영합니다 <%=id %>님<br>
		비번은 <%=pw %>입니다.
		<div class="container">
		<h2>로그인과 로그아웃</h2>
		<hr>
	
	<form action="logout" method="post">
		<input type="submit" class="btn btn-success" value="로그아웃">
	</form>
	</div>
</body>
</html>