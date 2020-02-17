package field;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseConnectivity.statusCheck;




@WebServlet("/editStatus")
public class editStatus extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("field_id");
		String status=request.getParameter("status");
		
		statusCheck dao=new statusCheck();

		if(dao.updateStatus(id,status)) { 
			
			response.sendRedirect("field.jsp");
			
			
		}
		
		
		
		
		
	}

}