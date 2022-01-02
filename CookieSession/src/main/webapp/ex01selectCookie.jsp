<%@page import="java.net.URLDecoder"%>
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
	// 1. ��Ű�� �޾ƿ���
	// request.getCookies()�� �̿��ؼ� ��Ű�� �޾ƿ�
	// �ش��ϴ� �����ο��� ��밡���� ��� ��Ű�� ����
	Cookie[] cookies = request.getCookies();

	// for i in list : (python�� for��)	
	// for each��
	// for( ������ �������� Ÿ��, �̸� : �迭)
	for(Cookie c : cookies) {
		// ��Ű �̸�
		String cookieName = c.getName();
		
		// ��Ű ��
		String cookieValue = c.getValue();
		// ���ڵ� : ���ڵ��ߴ� ���ڿ��� �ٽ� ���� ���·� �ǵ����°�
		// URLDecoder ��ü�� decode �޼ҵ� ���
		cookieValue = URLDecoder.decode(cookieValue, "euc-kr");
		
		// String�� contains �޼ҵ�
		// : �Ű������� ���� ���ڿ���, �ȿ� �ִ��� ������ Ȯ��
		// booleanŸ������ ��������
		// contains("���ڿ�")
		if(cookieName.contains("cookie") == true) {
			out.print(cookieName + " : " + cookieValue + "<br>");
			
		}
		
	
	}

%>
<a href ="ex01deleteCookie"> ��Ű ���� </a>
</body>
</html>