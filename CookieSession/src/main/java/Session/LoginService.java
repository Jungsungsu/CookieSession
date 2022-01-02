package Session;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   // 1. id, pw 파라미터 수집
		   String id = request.getParameter("id");
		   String pw = request.getParameter("pw");
		   // 2. id랑 pw가 맞는지 확인
		   //3. 로그인 성공 / 실패 시 페이지 이동 sendRedirect
		   
		   ResultSet rs = null;
		   Connection conn = null;
		   PreparedStatement psmt = null;
		   
		   // 세션 객체 생성
		   HttpSession session =  request.getSession();
		   
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
		      MemberVO vo = new MemberVO(id, pw);
		      
		      // 세션에 vo를 저장
		      session.setAttribute("vo", vo);
		      
		      
		      
		      
		      response.sendRedirect("Ex12_LoginTrue.jsp");
		   
		   }else{
		      response.sendRedirect("Ex12_LoginFalse.jsp");
		   }
		   
		   }
		   catch(Exception e){
		      e.printStackTrace();
		   }
		   finally{
			   
			   try {
				   
				   if(rs!=null){
					   rs.close();
				   }
				   if(psmt!=null){
					   psmt.close();
				   }
				   if(conn!=null){
					   conn.close();
				   }
				
			} catch (Exception e2) {
			}
		 }
	}
}

