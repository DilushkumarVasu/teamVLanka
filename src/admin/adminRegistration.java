package admin;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.email.checkmail;

import userTypes.admin;

/**
 * Servlet implementation class FarmerRegistration
 */
@WebServlet("/adminRegistration")
public class adminRegistration extends HttpServlet {
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a_id = request.getParameter("a_id");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		
		
		admin dao=new admin();
		if(dao.insert(a_id,name,gender,address,phone,email,password)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("a_id", a_id);
			//checkmail mail=new checkmail();
			checkmail.transfer(email);
			response.sendRedirect("success.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("Admin_signUp.jsp");
		}

		
		//System.out.println("test");
		
		
	}

}
