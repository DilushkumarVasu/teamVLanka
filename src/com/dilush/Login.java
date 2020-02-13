package com.dilush;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dilush.dao.LoginDao;


@WebServlet("/Login")
public class Login extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		/*MessageDigest digest = MessageDigest.getInstance("SHA-256");
		String hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8)).toString();*/
		
		LoginDao dao=new LoginDao();
		
		if(dao.check(uname, pass)) {
			

			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("name",dao.getName(uname, pass));
			session.setAttribute("email",dao.getEmail(uname, pass));
			session.setAttribute("telephone",dao.getTele(uname, pass));
			session.setAttribute("address",dao.getAdd(uname, pass));
			session.setAttribute("gender",dao.getGender(uname, pass));
			session.setAttribute("nic",dao.getId(uname, pass));
			
			response.sendRedirect("farmer.jsp");
		}
		else {
			
			response.sendRedirect("f_login.jsp");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}





}
