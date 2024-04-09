package util.page;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.RRSharer;


public class PageInfo {
    
    private String title;
    private String url;

    public PageInfo(String title, String url) {
        super();
        this.title = title;
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public static Map<PageType, PageInfo> getRoute() {
        return route;
    }

    public static void setRoute(Map<PageType, PageInfo> route) {
        PageInfo.route = route;
    }


    public static Map<PageType, PageInfo> route = new HashMap<>();
    
    static {
        route.put(PageType.LOGIN, new PageInfo("Login", "login.jsp"));
        
        route.put(PageType.CHANGE_PASS, new PageInfo("Change Password", "/user/change-password.jsp"));
        route.put(PageType.EDIT_PROFILE, new PageInfo("Edit Profile", "/user/edit-profile.jsp"));
        
        route.put(PageType.CHANGE_PASS_ADMIN, new PageInfo("Change Password", "/admin/change-password.jsp"));
        route.put(PageType.EDIT_PROFILE_ADMIN, new PageInfo("Edit Profile", "/admin/edit-profile.jsp"));
        
        route.put(PageType.USER_HOME, new PageInfo("Home", "home.jsp"));
        route.put(PageType.USER_FAVORITE, new PageInfo("Favorite", "favorite.jsp"));
        route.put(PageType.USER_VIDEO_DETAIL, new PageInfo("Video Detail", "video-detail.jsp"));
        
        route.put(PageType.ADMIN_VIDEOS, new PageInfo("Video Management", "video.jsp"));
        route.put(PageType.ADMIN_USERS, new PageInfo("User Management", "user.jsp"));
        route.put(PageType.ADMIN_REPORTS, new PageInfo("report", "report.jsp"));
    }
       
    public static void goToAdminPage(HttpServletRequest request, HttpServletResponse response, PageType pageType) throws ServletException, IOException {
    	PageInfo page = route.get(pageType);
		request.setAttribute("page", page);
    	request.getRequestDispatcher("admin/layout.jsp").forward(request, response);
    }
    
    public static void goToUserPage(HttpServletRequest request, HttpServletResponse response, PageType pageType) throws ServletException, IOException {
    	PageInfo page = route.get(pageType);
		request.setAttribute("page", page);
    	request.getRequestDispatcher("user/layout.jsp").forward(request, response);
    }
    
    
}
