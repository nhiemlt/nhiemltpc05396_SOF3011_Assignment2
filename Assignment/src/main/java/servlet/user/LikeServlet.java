package servlet.user;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;
import dao.FavoriteDAO;
import dao.UserDAO;
import model.Favorite;
import model.User;
import model.Video;
import util.XSession;
import util.page.PageInfo;
import util.page.PageType;

/**
 * Servlet implementation class LikeServlet
 */
@WebServlet("/LikeServlet/*")
public class LikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LikeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String videoId = request.getParameter("videoID");
		
		Auth auth = new Auth(request);
    	request.setAttribute("isLogin", auth.isLogin());
		String username = auth.getUsername();
		if (auth.isLogin()==false) {
			response.sendRedirect("LoginServlet");
			return;
		}

		try {
			FavoriteDAO dao = new FavoriteDAO();
			Favorite favorite = new Favorite();

			Video video = new Video();
			video.setVideoID(Integer.parseInt(videoId));
			favorite.setVideo(video);

			favorite.setUser(new UserDAO().getUserByUsername(username));

			favorite.setLikeDate(new Timestamp(new Date().getTime()));
			dao.addFavorite(favorite);
			request.setAttribute("message", "Video is added to Favorite");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
		}
		response.sendRedirect("FavoriteServlet");
	}
	

}
