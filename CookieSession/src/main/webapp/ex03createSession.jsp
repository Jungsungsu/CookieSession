<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> ���� ���� </h1>
<%
	// 1. ��ü ���� X
	// JSP���� ���ǰ�ü ����X --> ���尴ü
	// JSP���� servlet���Ϸ� ��ȯ�ɶ� �ڵ����� ����
	
	// 2. ���ǿ� ������ ����
	// setAttribute("���� �̸�", "(Object)������ ��ü or ������") �޼ҵ� �̿�
	session.setAttribute("first", "String");
	session.setAttribute("second", 100);

%>
	<a href="ex03selectSession.jsp"> ���� Ȯ�� </a>
	
</body>
</html>