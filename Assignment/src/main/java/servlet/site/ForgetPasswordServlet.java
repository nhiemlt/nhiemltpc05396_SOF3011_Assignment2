package servlet.site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import util.SendEmailSMTP;
import dao.UserDAO;

@WebServlet("/ForgetPasswordServlet")
public class ForgetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ForgetPasswordServlet() {
		super();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailTo = request.getParameter("emailuser");

		UserDAO userDAO = new UserDAO();
		User user = userDAO.getUserByEmail(emailTo);
		System.out.println(user.getUsername());

		if (user != null) {
			SendEmailSMTP emailSender = new SendEmailSMTP();
			emailSender.sendTemporaryPassword(emailTo);
			userDAO.updateTemporaryPassword(emailTo, emailSender.getTempPass());
			request.setAttribute("message", "Success");
			response.setHeader("Refresh", "1;url=LoginServlet");
		} else {
			request.setAttribute("message", "Email incorrect");
			response.setHeader("Refresh", "1;url=LoginServlet");
		}
	}

}
