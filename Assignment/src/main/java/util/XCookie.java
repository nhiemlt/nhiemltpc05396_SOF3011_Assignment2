package util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XCookie {

    public static void add(String name, String value, int hours, HttpServletResponse response) {

        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours * 60 * 60);
        cookie.setPath("/");
		response.addCookie(cookie);
    }

    public static String get(String name, String defaultValue, HttpServletRequest request) {
    	Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(name)) {
					return cookie.getValue();
				}
			}
		}
		return null;
    }
    
    public void clearCookie(HttpServletRequest request, HttpServletResponse response) {
    	Cookie[] cookies = request.getCookies();
    	if (cookies != null) {
    	    for (Cookie cookie : cookies) {
    	        cookie.setMaxAge(0); 
    	        response.addCookie(cookie);
    	    }
    	}
    }
}
