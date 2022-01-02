<%@page import="java.net.URLEncoder"%>
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
	// 1. 쿠키 객체를 생성
	// new Cookie("(String쿠키 이름", "(String)값")
	Cookie cookie = new Cookie("first_cookie", "firstCookie");
	
	// 쿠키는 순수 텍스트만 저장
	// 공백, ',' , : , ; 과 같은 특수기호중 일부가 저장 불가능
	// URL 형식으로 인코딩
	// URLEncoder 객체를 사용해서 인코딩을 진행해야 한다.
	// URLEncoder.encode("인코딩할 문자열", "인코딩 방식");
	
	Cookie cookie2 = new Cookie("second_cookie", URLEncoder.encode("second cookie", "euc-kr"));
	
	// 2. 응답에 쿠키를 추가
	// addCookie(쿠키);
	response.addCookie(cookie);
	response.addCookie(cookie2);

%>
	<a href = "ex01selectCookie.jsp"> 쿠키 확인 </a>
</body>
</html>