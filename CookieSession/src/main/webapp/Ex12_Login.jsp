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
   // 1. id, pw 파라미터 수집
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   // 2. id랑 pw가 맞는지 확인
   //3. 로그인 성공 / 실패 시 페이지 이동 sendRedirect
   
   ResultSet rs = null;
   Connection conn = null;
   PreparedStatement psmt = null;
   
   
   try{
   // 1. 동적 로딩
   Class.forName("oracle.jdbc.driver.OracleDriver");
   
   // 2. DB연결 / Connection 객체 생성
   String url = "jdbc:oracle:thin:@localhost:1521:xe";
   String dbid = "hr";
   String dbpw = "hr";
   
   conn = DriverManager.getConnection(url,dbid,dbpw);
   
   // 3. sql문 준비
   String sql = "select * from jdbc_member where id = ? and pw = ?";
   
   // 4. PreparedStatement 객체 준비
   psmt = conn.prepareStatement(sql);
   
   // 5. 바인드변수 채우기
   psmt.setString(1, id); //(몇번째 물음표인지, 어떤값을 넣을 것인지)
   psmt.setString(2, pw); //(몇번째 물음표인지, 어떤값을 넣을 것인지)
   

   rs = psmt.executeQuery();

   if(rs.next() == true){
     
      
      // 로그인 성공시 세션에 id를 담기
      
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