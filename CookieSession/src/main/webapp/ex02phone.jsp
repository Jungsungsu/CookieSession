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
	Cookie cookie = new Cookie("phone_item", "핸드폰");
	
	// 브라우저 종료시 최근 본 상품 목록이 초기화 되려면 유효기간 안해주면 된다.
	
	// 2. 응답에 쿠키 추가
	response.addCookie(cookie);
	
%>
	<p> 핸드폰에 대한 상세 페이지입니다. </p>
	<a href="ex02list.jsp"> 제품 목록 페이지 </a>
	
</body>
</html>