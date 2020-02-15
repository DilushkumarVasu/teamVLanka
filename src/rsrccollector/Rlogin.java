package rsrccollector;

import demo.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import rsrccollector.dao.Rlogindao;


@WebServlet("/Rlogin")
public class Rlogin extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		Rlogindao dao=new Rlogindao();
		Encryption enc=new Encryption();
		
<<<<<<< HEAD
		String encPass= enc.MD5(pass);	
=======
		String encPass=enc.MD5(pass);		
>>>>>>> ada0bca8efc955ee650aa12aa4706e99ecd64ffc
		if(dao.check(uname, encPass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
		/*	session.setAttribute("email",dao.getemail(uname, pass));
			session.setAttribute("tele",dao.gettele(uname, pass));
			session.setAttribute("address",dao.getadd(uname, pass));
			session.setAttribute("status",dao.getstatus(uname, pass)); */
			
			
			
			// response.sendRedirect("landownerhome.jsp");
			
			response.sendRedirect("RsrcHome.jsp");
		}
		else {
			
			response.sendRedirect("RsrcCollectLogin.jsp");
		}
	}

}