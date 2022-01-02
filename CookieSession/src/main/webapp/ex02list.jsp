<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> 판매 제품 목록 </h1>
<ul>
	<li> <a href="ex02mouse.jsp">마우스</a></li>
	<li> <a href="ex02phone.jsp">핸드폰</a></li>
	<li> <a href="ex02computer.jsp">컴퓨터</a></li>
</ul>
<hr>
<strong> <p>최근 본 상품</p> </strong>
<%
	
	// 상품에 대한 쿠키만 출력
	
	//1. 전체 쿠키 가져오기
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies) {
	
		String cookieName = c.getName();
		
	
		String cookieValue = c.getValue();
	
	
		// 2. 쿠키 구분해주기(contains 메소드)
		if(cookieName.contains("item") == true) {
		
		// 3. 쿠키의 값을 출력
			out.print(cookieName + " : " + cookieValue + "<br>");
			
		}
		
	
	}


%>	
	
</body>
</html>