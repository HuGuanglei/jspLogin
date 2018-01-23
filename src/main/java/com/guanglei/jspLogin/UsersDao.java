package com.guanglei.jspLogin;
import com.guanglei.jspLogin.Users;

public class UsersDao {
	//user login method
	public boolean usersLogin(Users u){
		if("admin".equals(u.getUsername())&& "admin".equals(u.getPassword())) {
			return true;
		}
		else {
			return false;
		}
			
		
	}
	

}
