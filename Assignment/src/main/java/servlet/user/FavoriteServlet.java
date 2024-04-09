package servlet.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;

import java.util.List;

import dao.FavoriteDAO;
import dao.UserDAO;
import dao.VideoDAO;
import model.Favorite;
import model.User;
import model.Video;
import util.RRSharer;
import util.XCookie;
import util.XScope;
import util.XSession;
import util.page.PageInfo;
import util.page.PageType;

/**
 * Servlet implementation class FavoriteServlet
 */
@WebServlet("/FavoriteServlet")
public class FavoriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FavoriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Auth auth = new Auth(request);
    	request.setAttribute("isLogin", auth.isLogin());
    	String username = auth.getUsername();
		FavoriteDAO dao = new FavoriteDAO();
		if (username != null) {
			List<Video> videos = dao.findAllByUsername(username);
			if (videos.size() > 0) {
				request.setAttribute("videos", videos);
				request.setAttribute("username", username);
				PageInfo.goToUserPage(request, response, PageType.USER_FAVORITE);

			} else {
				request.setAttribute("message", "You haven't liked any videos yet!");
				PageInfo.goToUserPage(request, response, PageType.USER_FAVORITE);
			}
		} else {
			request.getRequestDispatcher("/Login").forward(request, response);
		}
    }
}
