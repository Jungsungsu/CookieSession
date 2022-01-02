<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	// 1. 쿠키 객체 생성
	Cookie cookie = new Cookie("mouse_item", "마우스");
	
	// 2.  쿠키의 유효기간 설정	
	cookie.setMaxAge(60*60);
	// 3. 응답에 쿠키 추가
	response.addCookie(cookie);
	
%>
	<p> 마우스에 대한 상세 페이지입니다. </p>
	<a href="ex02list.jsp"> 제품 목록 페이지 </a>
	
</body>
</html>