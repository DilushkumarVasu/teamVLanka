package landOwner;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/lLogout")
public class lLogout extends HttpServlet {
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
						response.setContentType("text/html");  
						PrintWriter out=response.getWriter();  
						
						request.getRequestDispatcher("l_login.jsp").include(request, response);  
						
						HttpSession session=request.getSession();  
						session.invalidate();  
						
					  
						
						out.close();  
} 

	

}
