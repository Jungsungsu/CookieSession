<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> 세션 생성 </h1>
<%
	// 1. 객체 생성 X
	// JSP파일 세션객체 생성X --> 내장객체
	// JSP파일 servlet파일로 변환될때 자동으로 선언
	
	// 2. 세션에 정보를 저장
	// setAttribute("세션 이름", "(Object)저장할 객체 or 데이터") 메소드 이용
	session.setAttribute("first", "String");
	session.setAttribute("second", 100);

%>
	<a href="ex03selectSession.jsp"> 세션 확인 </a>
	
</body>
</html>