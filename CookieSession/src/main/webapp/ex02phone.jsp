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
	Cookie cookie = new Cookie("phone_item", "�ڵ���");
	
	// ������ ����� �ֱ� �� ��ǰ ����� �ʱ�ȭ �Ƿ��� ��ȿ�Ⱓ �����ָ� �ȴ�.
	
	// 2. ���信 ��Ű �߰�
	response.addCookie(cookie);
	
%>
	<p> �ڵ����� ���� �� �������Դϴ�. </p>
	<a href="ex02list.jsp"> ��ǰ ��� ������ </a>
	
</body>
</html>