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
      // 1. 파라미터 수집
      MemberVO vo = (MemberVO)session.getAttribute("vo");
   
   	  // if(rs.next() == true) {
   	  //	session.setAttribute();
   	  // }
   	  // 로그인 실패 -> vo == null
   	  // vo가 null인지 아닌지 : 로그인 상태를 구분할 수 있다.		  
   	
   	  
   	  
   %>

   <fieldset>
   <!-- for문이나 if문 같이 body가 있는 문장은 스크립틀릿으로 쪼개서 태그처럼 사용할 수 있다. -->
   	 <%if(vo != null){ %>
      <h1>  <%=vo.getId() %>님 환영합니다. </h1>
      <% }else { %>
       <h1> 로그인 실패</h1>
       <a href = "Ex12_Login.html"> 메인으로 </a>
   	  <% } %>
   	  
   </fieldset>

</body>
</html>