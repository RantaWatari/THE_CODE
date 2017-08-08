package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CipherMore")
public class Cipher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String page =  request.getParameter("page");
		int pageNum = Integer.parseInt(page);

		if(pageNum == 0){

		}else if(pageNum == 1){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/CaesarShiftCipher.jsp");
			dispatcher.forward(request, response);
		}else if(pageNum == 2){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/VigenereCipher.jsp");
			dispatcher.forward(request, response);
		}else if(pageNum == 3){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Enigma.jsp");
			dispatcher.forward(request, response);
		}else if(pageNum == 777){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Unicode.jsp");
			dispatcher.forward(request, response);
		}

	}

}
