<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
fieldset{
   border: dotted;
   text-align: center;
}

</style>
</head>
<body>
   <%
      // 1. �Ķ���� ����
      MemberVO vo = (MemberVO)session.getAttribute("vo");
   
   	  // if(rs.next() == true) {
   	  //	session.setAttribute();
   	  // }
   	  // �α��� ���� -> vo == null
   	  // vo�� null���� �ƴ��� : �α��� ���¸� ������ �� �ִ�.		  
   	
   	  
   	  
   %>

   <fieldset>
   <!-- for���̳� if�� ���� body�� �ִ� ������ ��ũ��Ʋ������ �ɰ��� �±�ó�� ����� �� �ִ�. -->
   	 <%if(vo != null){ %>
      <h1>  <%=vo.getId() %>�� ȯ���մϴ�. </h1>
      <% }else { %>
       <h1> �α��� ����</h1>
       <a href = "Ex12_Login.html"> �������� </a>
   	  <% } %>
   	  
   </fieldset>

</body>
</html>