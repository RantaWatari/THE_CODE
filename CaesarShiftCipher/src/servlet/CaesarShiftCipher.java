package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CipherProtocol;
import model.Text;

@WebServlet("/CaesarShiftCipher")
public class CaesarShiftCipher extends HttpServlet {
	private static final long serialVersionUID = 1L;

// ブラウザからのrequestをdoGetで受け取り、"/WEB-INF/jsp/textInputScreen.jsp"へフォワードする。
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/textInputScreen.jsp");
		dispatcher.forward(request, response);
	}

// "/WEB-INF/jsp/textInputScreen.jsp"からのformをdoPostで受け取る。
// <2.>formの入力値をgetParameterで受け取り、Text.java（javaBeans）でスコープ処理を行なう。
// <3.>EncodeDecodeで文章の変換を行なう。
// <3.1.>"/WEB-INF/jsp/textInputScreen.jsp"からのformで受け取ったprotocolで、EncodeDecode.encode()かEncodeDecode.decode()の処理を行なう。
// <3.1.a><3.1.b>EncodeDecodeで文章の変換を行ない、"/WEB-INF/jsp/encodeResultScreen.jsp"をフォワードする。
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// <2.>
		String protocol = request.getParameter("protocol");
		String key = request.getParameter("key");
		String clearText = request.getParameter("clearText");

		Text text = new Text();
		text.setText(clearText);
		text.setKey(Integer.parseInt(key));

		// <3.>
		CipherProtocol encodeDecode = new CipherProtocol();

		// <3.1.>
		if(protocol.equals("0")){
			// <3.1.a>
			encodeDecode.encode(text);

			request.setAttribute("text", text);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/encodeResultScreen.jsp");
			dispatcher.forward(request, response);
		}else{
			// <3.1.b>
			encodeDecode.decode(text);

			request.setAttribute("text", text);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/decodeResultScreen.jsp");
			dispatcher.forward(request, response);
		}

	}

}
