package farmer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dilush.dao.LoginDao;
import com.dilush.dao.SignupDao;

import userTypes.Farmer;

/**
 * Servlet implementation class FarmerRegistration
 */
@WebServlet("/FarmerRegistration")
public class FarmerRegistration extends HttpServlet {
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String address = request.getParameter("add");
		String gender = request.getParameter("gender");
		String tp = request.getParameter("tp");
		String email = request.getParameter("email");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String pic=request.getParameter("pic");
		
		
		
		Farmer dao=new Farmer();
		if(dao.insert(name, nic, address, gender, tp, email, uname, pass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("f_login.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}

		
		//System.out.println("test");
		
		
	}

}
