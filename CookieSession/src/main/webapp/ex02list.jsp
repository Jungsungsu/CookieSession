<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> �Ǹ� ��ǰ ��� </h1>
<ul>
	<li> <a href="ex02mouse.jsp">���콺</a></li>
	<li> <a href="ex02phone.jsp">�ڵ���</a></li>
	<li> <a href="ex02computer.jsp">��ǻ��</a></li>
</ul>
<hr>
<strong> <p>�ֱ� �� ��ǰ</p> </strong>
<%
	
	// ��ǰ�� ���� ��Ű�� ���
	
	//1. ��ü ��Ű ��������
	Cookie[] cookies = request.getCookies();

	for(Cookie c : cookies) {
	
		String cookieName = c.getName();
		
	
		String cookieValue = c.getValue();
	
	
		// 2. ��Ű �������ֱ�(contains �޼ҵ�)
		if(cookieName.contains("item") == true) {
		
		// 3. ��Ű�� ���� ���
			out.print(cookieName + " : " + cookieValue + "<br>");
			
		}
		
	
	}


%>	
	
</body>
</html>