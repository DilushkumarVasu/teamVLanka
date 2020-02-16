package rsrccollector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rsrccollector.dao.Rregisterdao;

@WebServlet("/Rupdate")
public class RsrcUpdateProfile extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//String pass=request.getParameter("pass");
		String email=request.getParameter("email");
		String uname = request.getParameter("uname");
		String telephone=request.getParameter("telephone");
		String address=request.getParameter("address");
		
		
		Rregisterdao dao=new Rregisterdao();
		

		if(dao.Rupdate(uname, email,telephone,address)) { 
			

			
			response.sendRedirect("RsrcCollectLogin.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("Rwelcome.jsp");
		}
		
		
		
		
	}


}
