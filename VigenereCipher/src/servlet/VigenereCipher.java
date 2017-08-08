package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProtocolLogic;
import model.Text;

@WebServlet("/VigenereCipher")
public class VigenereCipher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Top.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// requestprameterの取得
		request.setCharacterEncoding("UTF-8");
		String protocol = request.getParameter("protocol");
		String keyWord = request.getParameter("keyWord");
		String text = request.getParameter("text");

		// keyWrod,textをプロパティに設定
		Text ｔextProperty = new Text(Integer.parseInt(protocol),keyWord,text);

		// ｔextPropertyをProtocolLogic.javaで引数として与えて処理する
		ProtocolLogic protocolLogic = new ProtocolLogic();
		protocolLogic.LogicStart(ｔextProperty);

		// リクエストに保存
		request.setAttribute("text",ｔextProperty);

		// /WEB-INF/jsp/ENdScreen.jspにフォワードする。
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Result.jsp");
		dispatcher.forward(request, response);
	}

}
