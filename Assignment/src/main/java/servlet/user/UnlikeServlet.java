package servlet.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;

/**
 * Servlet implementation class UnlikeServlet
 */
@WebServlet("/UnlikeServlet")
public class UnlikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnlikeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Auth auth = new Auth(request);
    	String username = auth.getUsername();
    	if (username==null) {
			request.getRequestDispatcher("/LoginServlet").forward(request, response);
		}
    	
    	request.getParameter("VideoID");
    }

}
