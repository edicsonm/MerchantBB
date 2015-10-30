package au.com.billingbuddy.bean;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component
public class UserBean implements Serializable {
	
	private static final long serialVersionUID = 3990094952205012481L;
	
	private String userName;
	private String password;

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
