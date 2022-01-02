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
			
		// 1. 技记 按眉 积己
		HttpSession session =  request.getSession();
		
		// 2. 技记 傈何 昏力
		// invalidate() : 技记俊 乐绰 葛电蔼阑 昏力
		session.invalidate();
		
		// 其捞瘤 捞悼
		response.sendRedirect("ex03selectSession.jsp");
		
	}

}
