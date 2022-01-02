package Session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex03deleteAllSession")
public class ex03deleteAllSession extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// 1. ���� ��ü ����
		HttpSession session =  request.getSession();
		
		// 2. ���� ���� ����
		// invalidate() : ���ǿ� �ִ� ��簪�� ����
		session.invalidate();
		
		// ������ �̵�
		response.sendRedirect("ex03selectSession.jsp");
		
	}

}
