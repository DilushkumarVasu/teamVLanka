package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import admin.dao.AdmDele;


@WebServlet("/AdminDelete")
public class AdminDelete extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
		try{
			
			String a_id=request.getParameter("d");
			
			
			AdmDele dao=new AdmDele();
			dao.delete(a_id);
			response.sendRedirect("Admin.jsp");
			
			}catch (Exception e) {
				e.printStackTrace();
			}
	}

}
