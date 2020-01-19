package farmer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userTypes.Farmer;



@WebServlet("/edit")
public class edit extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name=request.getParameter("name");
		String nic=request.getParameter("nic");
		String add = request.getParameter("add");
		String gender=request.getParameter("gender");
		String tele=request.getParameter("tele");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		
		Farmer dao=new Farmer();
		System.out.print("im here");

		if(dao.update(name,nic,add,gender,tele,email,uname)) { 
			

			
			response.sendRedirect("f_login.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}
		
		
		
		
	}

}