package temp;

import java.sql.Date;

public class EditProfile {

	String username, fullname, email;
	public EditProfile() {
		
	}
	public EditProfile(String username, String fullname, String email) {
		super();
		this.username = username;
		this.fullname = fullname;
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	

}
