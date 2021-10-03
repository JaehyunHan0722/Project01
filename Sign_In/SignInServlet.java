package project01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "project01signin", urlPatterns = { "/project01/signin.do" })
public class SignInServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String cellnum = request.getParameter("cellnum");
		
		userinfoDTO user = new userinfoDTO(id, password, name, cellnum);
		userinfoDAO dao = new userinfoDAO();
		dao.insert(user);
		System.out.println("가입 완료");		
	}

}
