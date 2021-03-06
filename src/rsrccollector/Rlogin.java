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
		
		String encPass= enc.MD5(pass);	
		if(dao.check(uname, encPass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("rsrc_id",dao.getId(uname,encPass));
	    	session.setAttribute("email",dao.getemail(uname,encPass));
	    	session.setAttribute("name",dao.getname(uname,encPass));
			session.setAttribute("telephone",dao.gettele(uname, encPass));
			session.setAttribute("address",dao.getadd(uname, encPass));
			session.setAttribute("area",dao.getarea(uname, encPass)); 
			
			response.sendRedirect("RsrcHome.jsp");
		}
		else {
			
			response.sendRedirect("RsrcCollectLogin.jsp");
		}
	}

}