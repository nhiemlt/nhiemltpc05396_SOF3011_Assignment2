package servlet.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;
import util.SendEmailSMTP;

/**
 * Servlet implementation class ShareServlet
 */
@WebServlet("/ShareServlet")
public class ShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShareServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Auth auth = new Auth(request);
    	request.setAttribute("isLogin", auth.isLogin());
		if (auth.isLogin()==false) {
			response.sendRedirect("LoginServlet");
		}
		else {
			try {
				String id = request.getParameter("id");
				String emailParam = request.getParameter("email");
				if (emailParam != null) {
				    String link = "http://localhost:8080/Assignment/VideoDetailServlet?id=" + id;
				    new SendEmailSMTP().shareVideo(emailParam, link);
				    request.setAttribute("message", "Send mail success");
				} else {
				    request.setAttribute("message", "Email address is null");
				}
				request.getRequestDispatcher("HomeServlet").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}

}
