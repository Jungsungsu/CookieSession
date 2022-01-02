<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
   // 1. id, pw �Ķ���� ����
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   // 2. id�� pw�� �´��� Ȯ��
   //3. �α��� ���� / ���� �� ������ �̵� sendRedirect
   
   ResultSet rs = null;
   Connection conn = null;
   PreparedStatement psmt = null;
   
   
   try{
   // 1. ���� �ε�
   Class.forName("oracle.jdbc.driver.OracleDriver");
   
   // 2. DB���� / Connection ��ü ����
   String url = "jdbc:oracle:thin:@localhost:1521:xe";
   String dbid = "hr";
   String dbpw = "hr";
   
   conn = DriverManager.getConnection(url,dbid,dbpw);
   
   // 3. sql�� �غ�
   String sql = "select * from jdbc_member where id = ? and pw = ?";
   
   // 4. PreparedStatement ��ü �غ�
   psmt = conn.prepareStatement(sql);
   
   // 5. ���ε庯�� ä���
   psmt.setString(1, id); //(���° ����ǥ����, ����� ���� ������)
   psmt.setString(2, pw); //(���° ����ǥ����, ����� ���� ������)
   

   rs = psmt.executeQuery();

   if(rs.next() == true){
     
      
      // �α��� ������ ���ǿ� id�� ���
      
      session.setAttribute("id", id);
      
      response.sendRedirect("Ex12_LoginTrue.jsp");
   
   }else{
      response.sendRedirect("Ex12_LoginTrue.jsp");
   }
   
   }
   catch(Exception e){
      e.printStackTrace();
   }
   finally{
   
      if(rs!=null){
         rs.close();
      }
      if(psmt!=null){
         psmt.close();
      }
      if(conn!=null){
         conn.close();
      }
   }
   
%>

	
	
</body>
</html>