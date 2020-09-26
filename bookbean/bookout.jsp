<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>도서정보</title>
</head>
<body>
	<jsp:useBean id="book" class="csdit.ch03.BookBean" scope="request" />
	<jsp:setProperty property="*" name="book"/>
	<h1>도서 정보</h1>
	<br>
	책 제목 : <c:out value="${book.title }"/><br>
	저자 : <c:out value="${book.author }"/><br>
	출판사 :	<c:out value="${book.publisher }"/><br>
</body>
</html>