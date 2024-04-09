package auth;

import javax.servlet.http.HttpServletRequest;

import dao.UserDAO;
import model.User;
import util.XCookie;

public class Auth {

	private String username;
	private boolean userRole;
	HttpServletRequest request;
	
	public User findUser(HttpServletRequest request) {
		String username = XCookie.get("username", null, request);
		if (username == null) {
			return null;
		}
		User user = new UserDAO().getUserByUsername(username);
		return user;
	}
	
	public void setAuth(HttpServletRequest request) {
		User user = findUser(request);
		if (user == null) {
			this.username = null;
			this.userRole = false;
		}
		else {
			this.username = user.getUsername();
			this.userRole = user.getUserRole();
		}
	}
	
	
	public String getUsername() {
		return username;
	}


	public boolean isUserRole() {
		return userRole;
	}
	
	public boolean isLogin() {
		return username != null;
	}

	public Auth(HttpServletRequest request) {
		setAuth(request);
	}

}
