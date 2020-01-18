package landOwner;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import landOwner.dao.lOwnersignup;


@WebServlet("/update")
public class updateprofile extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//String pass=request.getParameter("pass");
		String email=request.getParameter("email");
		String uname = request.getParameter("uname");
		String status=request.getParameter("status");
		String tele=request.getParameter("tele");
		String address=request.getParameter("address");
		String gender=request.getParameter("gender");
		
		lOwnersignup dao=new lOwnersignup();
		System.out.print("im here");

		if(dao.update(uname, email,status,tele,address,gender)) { 
			

			
			response.sendRedirect("l_login.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}
		
		
		
		
	}

}