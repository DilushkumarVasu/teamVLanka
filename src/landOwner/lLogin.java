package landOwner;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dilush.dao.LoginDao;

import landOwner.dao.lLoginDao;


@WebServlet("/lLogin")
public class lLogin extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		lLoginDao dao=new lLoginDao();
		
		if(dao.check(uname, pass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("landowner.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("l_login.jsp");
		}
	}

}