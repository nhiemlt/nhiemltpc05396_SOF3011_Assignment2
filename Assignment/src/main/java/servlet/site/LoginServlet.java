package servlet.site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import auth.Auth;
import dao.UserDAO;
import model.User;
import temp.LoginStatus;
import util.RRSharer;
import util.XCookie;
import util.XScope;
import util.XSession;
import util.page.PageInfo;
import util.page.PageType;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getMethod().contains("POST")) {
			LoginStatus login = new LoginStatus();
		    try {
		    	BeanUtils.populate(login, request.getParameterMap());
		    	UserDAO dao = new UserDAO();
				User user = dao.getUserByUsername(login.getUsername());
		        if (user != null && user.getPassword().equalsIgnoreCase(login.getPassword())) {
		        	XCookie.add("username", login.getUsername(), 1, response);
		        }
		        if (login.isRemember()) {
					XCookie.add("username", login.getUsername(), 24, response);
				} else {
					XCookie.add("username", login.getUsername(), 1, response);
				}

		        if (user.getUserRole()) {
					PageInfo.goToAdminPage(request, response, PageType.ADMIN_VIDEOS);
				}
		        else {
		        	response.sendRedirect("HomeServlet");
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		        request.getRequestDispatcher("login.jsp").forward(request, response);
		    }
		}
		else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}


}
