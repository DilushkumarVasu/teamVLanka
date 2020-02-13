package landOwner;

import java.io.IOException;
import demo.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import landOwner.dao.lLoginDao;


@WebServlet("/lLogin")
public class lLogin extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		lLoginDao dao=new lLoginDao();
		Encryption enc = new Encryption();
		
		String encPass = enc.MD5(pass);
		
		if(dao.check(uname, encPass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			session.setAttribute("email",dao.getemail(uname, encPass));
			session.setAttribute("tele",dao.gettele(uname, encPass));
			session.setAttribute("address",dao.getadd(uname, encPass));
			session.setAttribute("status",dao.getstatus(uname, encPass));
			
			response.sendRedirect("landownerhome.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("l_login.jsp");
		}
	}

}