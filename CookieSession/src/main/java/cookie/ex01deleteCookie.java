package cookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01deleteCookie")
public class ex01deleteCookie extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 1. 쿠키 객체 생성
		Cookie cookie = new Cookie("first_cookie", "first_cookie");
		// 삭제할 쿠키는 값을 빈 문자열로 지정
		Cookie cookie2 = new Cookie("second_cookie", "");
		
		// 2. 유효 기간 설정
		// setMaxAge((int)초 단위 유효기간)
		// 만약 설정해주지 않으면, Session으로 표시되고,
		// 브라우저 종료시 삭제된다.
		cookie.setMaxAge(60*60*24*365);
		
		// 삭제
		cookie2.setMaxAge(0);
		
		// 응답에 쿠키 추가
		response.addCookie(cookie);
		response.addCookie(cookie2);
		
		// 페이지 이동
		response.sendRedirect("ex01selectCookie.jsp");
	}

}
