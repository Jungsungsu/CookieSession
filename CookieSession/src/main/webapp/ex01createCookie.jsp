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
	// 1. ��Ű ��ü�� ����
	// new Cookie("(String��Ű �̸�", "(String)��")
	Cookie cookie = new Cookie("first_cookie", "firstCookie");
	
	// ��Ű�� ���� �ؽ�Ʈ�� ����
	// ����, ',' , : , ; �� ���� Ư����ȣ�� �Ϻΰ� ���� �Ұ���
	// URL �������� ���ڵ�
	// URLEncoder ��ü�� ����ؼ� ���ڵ��� �����ؾ� �Ѵ�.
	// URLEncoder.encode("���ڵ��� ���ڿ�", "���ڵ� ���");
	
	Cookie cookie2 = new Cookie("second_cookie", URLEncoder.encode("second cookie", "euc-kr"));
	
	// 2. ���信 ��Ű�� �߰�
	// addCookie(��Ű);
	response.addCookie(cookie);
	response.addCookie(cookie2);

%>
	<a href = "ex01selectCookie.jsp"> ��Ű Ȯ�� </a>
</body>
</html>