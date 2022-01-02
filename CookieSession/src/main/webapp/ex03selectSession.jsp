<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> 세션 확인 </h1>
<%
	// 쿠키 : 한번에 모든 쿠키를 가져옴
	// 세션 : 하나씩 
	
	// getAttribute("저장해둔 이름")
	// 만약 이름에 해당하는 Session이 없으면 null값으로 리턴해준다.
	// 세션값을 불러올때 Object타입으로 가져와진다.
	// 원하는 변수에 담아서 사용하려면 다운캐스팅이 필요
	String first = (String)session.getAttribute("first");
	
	// int, char 이런 기본자료형 null값이 들어 갈 수 없다.
	// int가 아니라, Integer : int자료형의 참조 자료형
	Integer second = (Integer)session.getAttribute("second");
	
	out.print(first);
	out.print("<br>");
	out.print(second);
%>
<a href = "ex02deleteSession"> 세션 삭제(1개) </a>
<br>
<a href = "ex03deleteAllSession"> 세션 전부 삭제 </a>


</body>
</html>










