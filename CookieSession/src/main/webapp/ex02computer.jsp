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
	// 1. ��Ű ��ü ����
	Cookie cookie = new Cookie("computer_item", "��ǻ��");
	

	// 2.  ��Ű�� ��ȿ�Ⱓ ����	
	cookie.setMaxAge(60*60);
	
	// 3. ���信 ��Ű �߰�
	response.addCookie(cookie);
	
%>
	<p> ��ǻ�Ϳ� ���� �� �������Դϴ�. </p>
	<a href="ex02list.jsp"> ��ǰ ��� ������ </a>
	
</body>
</html>