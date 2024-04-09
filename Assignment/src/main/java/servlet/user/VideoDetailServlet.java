package servlet.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.Auth;
import dao.VideoDAO;
import model.Video;
import util.page.PageInfo;
import util.page.PageType;

/**
 * Servlet implementation class VideoDetailServlet
 */
@WebServlet("/VideoDetailServlet")
public class VideoDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    private List<Video> getTopViewVideos() {
		List<Video> videos = new VideoDAO().getAllVideos();

        Collections.sort(videos, new Comparator<Video>() {
            @Override
            public int compare(Video v1, Video v2) {
                return v2.getViews() - v1.getViews();
            }
        });

        return videos;
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Auth auth = new Auth(request);
    	request.setAttribute("isLogin", auth.isLogin());
		VideoDAO videoDAO = new VideoDAO();
		int videoId = Integer.parseInt(request.getParameter("id"));
		
		Video vd = videoDAO.getVideoById(videoId);
		
		List<Video> top5 = videoDAO.getTop5VideosByViewCount();
		
		request.setAttribute("top5", top5);
		
		request.setAttribute("video", vd);
		 
		PageInfo.goToUserPage(request, response, PageType.USER_VIDEO_DETAIL);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
