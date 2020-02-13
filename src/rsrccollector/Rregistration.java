package rsrccollector;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;



import rsrccollector.dao.Rregisterdao;


@WebServlet("/Rregistration")
public class  Rregistration extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String nic=request.getParameter("nic");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String area=request.getParameter("area");
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		
		
		Rregisterdao dao=new Rregisterdao();
		
		if(dao.insert(name,nic,address,email,telephone,area,uname,pass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("RsrcCollectLogin.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("Rwelcome.jsp");
		}
	}

}