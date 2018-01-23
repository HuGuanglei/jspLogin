<%@ page language="java" import="java.util.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<jsp:useBean id="myUsers" class="com.guanglei.jspLogin.Users" scope="page"/>
	<jsp:useBean id="usersDao " class="com.guanglei.jspLogin.UsersDao" scope="page"/>
	<jsp:setProperty name="myUsers" property="username" />
	<jsp:setProperty name="myUsers" property="password" />
	
	<%
		//if name=admin and password=admin login successfully
		if(usersDao.usersLogin(myUsers)){
		//set a session of username
			session.setAttribute("users", myUsers.getUsername());
			request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}
		else{
		//redirect to fail page
			response.sendRedirect("login_failure.jsp");
		}		
	%>
	
</body>
</html>