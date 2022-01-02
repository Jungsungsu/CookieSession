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
		
		   // 1. id, pw �Ķ���� ����
		   String id = request.getParameter("id");
		   String pw = request.getParameter("pw");
		   // 2. id�� pw�� �´��� Ȯ��
		   //3. �α��� ���� / ���� �� ������ �̵� sendRedirect
		   
		   ResultSet rs = null;
		   Connection conn = null;
		   PreparedStatement psmt = null;
		   
		   // ���� ��ü ����
		   HttpSession session =  request.getSession();
		   
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
		      MemberVO vo = new MemberVO(id, pw);
		      
		      // ���ǿ� vo�� ����
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

