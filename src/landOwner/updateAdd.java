package landOwner;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import landOwner.dao.lOwnersignup;
import landOwner.dao.updateAdddao;


@WebServlet("/updateAdd")
public class updateAdd extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String addid =request.getParameter("addId");
		String price=request.getParameter("price");
		String uname = request.getParameter("uname");
		String status=request.getParameter("status");
		String tele=request.getParameter("tele");
		String address=request.getParameter("address");
		System.out.println(addid);
		updateAdddao dao=new updateAdddao();
		

		if(dao.update(tele, price,status,addid)) { 
			

			
			response.sendRedirect("LviewAdd.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}
		
		
		
		
	}

}