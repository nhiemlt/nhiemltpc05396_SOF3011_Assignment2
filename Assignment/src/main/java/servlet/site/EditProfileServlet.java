package servlet.site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;
import dao.UserDAO;
import model.User;
import util.XSession;
import util.page.PageInfo;
import util.page.PageType;

/**
 * Servlet implementation class EditProfileServlet
 */
@WebServlet({ "/EditProfileServlet/*", "/admin_EditProfileServlet/*" })
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Auth auth = new Auth(request);
    	request.setAttribute("isLogin", auth.isLogin());
		String username = auth.getUsername();
		if (username == null) {
			request.getRequestDispatcher("/Login").forward(request, response);
			return;
		}

		UserDAO dao = new UserDAO();
		User user = dao.getUserByUsername(username);
		request.setAttribute("id", user.getUserID());
		request.setAttribute("username", user.getUsername());
		request.setAttribute("fullname", user.getFullname());
		request.setAttribute("email", user.getEmail());

		if (user.getUserRole()) {
			PageInfo.goToAdminPage(request, response, PageType.EDIT_PROFILE_ADMIN);
			return;
		}
		PageInfo.goToUserPage(request, response, PageType.EDIT_PROFILE);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			User user = new User();
			String fullname = request.getParameter("fullname");
			String email = request.getParameter("Email");
			String username = XSession.getLoginedUsername(request);
			UserDAO dao = new UserDAO();
			User oldUser = dao.getUserByUsername(username);
			user = oldUser;
			user.setFullname(fullname);
			user.setEmail(email);
			dao.updateUser(user);
			request.setAttribute("message", "User profile update!!");

			request.setAttribute("id", user.getUserID());
			request.setAttribute("username", user.getUsername());
			request.setAttribute("fullname", user.getFullname());
			request.setAttribute("email", user.getEmail());
			if (user.getUserRole()) {
				PageInfo.goToAdminPage(request, response, PageType.EDIT_PROFILE_ADMIN);
				return;
			}
			PageInfo.goToUserPage(request, response, PageType.EDIT_PROFILE);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		
	}

}
