package landOwner;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import landOwner.dao.lOwnersignup;


@WebServlet("/lSignup")
public class  lSignup extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String nic=request.getParameter("nic");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String telenum = request.getParameter("telenum");
		String gender=request.getParameter("gender");
		String status=request.getParameter("status");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		lOwnersignup dao=new lOwnersignup();
		
		if(dao.insert(nic,name,address,gender,status,telenum,email,uname,pass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("l_login.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}
	}

}