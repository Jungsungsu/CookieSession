<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> ���� Ȯ�� </h1>
<%
	// ��Ű : �ѹ��� ��� ��Ű�� ������
	// ���� : �ϳ��� 
	
	// getAttribute("�����ص� �̸�")
	// ���� �̸��� �ش��ϴ� Session�� ������ null������ �������ش�.
	// ���ǰ��� �ҷ��ö� ObjectŸ������ ����������.
	// ���ϴ� ������ ��Ƽ� ����Ϸ��� �ٿ�ĳ������ �ʿ�
	String first = (String)session.getAttribute("first");
	
	// int, char �̷� �⺻�ڷ��� null���� ��� �� �� ����.
	// int�� �ƴ϶�, Integer : int�ڷ����� ���� �ڷ���
	Integer second = (Integer)session.getAttribute("second");
	
	out.print(first);
	out.print("<br>");
	out.print(second);
%>
<a href = "ex02deleteSession"> ���� ����(1��) </a>
<br>
<a href = "ex03deleteAllSession"> ���� ���� ���� </a>


</body>
</html>










