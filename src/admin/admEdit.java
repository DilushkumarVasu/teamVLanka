package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userTypes.Farmer;
import userTypes.admin;



@WebServlet("/admEdit")
public class admEdit extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String a_id=request.getParameter("a_id");
		String name=request.getParameter("name");
		String gender = request.getParameter("gender");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		
		admin dao=new admin();
		System.out.print("im here");

		if(dao.update(a_id,name,gender,address,phone,email))
		{
			response.sendRedirect("Admin_login.jsp");
		
		}
			
			
		
		
		
		
	}

}