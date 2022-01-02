package Session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex02deleteSession")
public class ex02deleteSession extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. ���� ��ü ����
		HttpSession session =  request.getSession();
		
		// 2. ���� 1�� ����
		// removeAttribute("���� �̸�")
		session.removeAttribute("second");
		
		// ������ �̵�
		response.sendRedirect("ex03selectSession.jsp");
		
	
	}

}
