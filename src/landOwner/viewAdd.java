package landOwner;

import java.io.File;
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



import landOwner.dao.lOwnersignup;


@WebServlet("/viewAdd")
 
public class  viewAdd extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("addId");
		System.out.println(id);
        

	
		
//		if(dao.insert(nic,name,address,gender,inputStream,status,telenum,email,uname,pass)) { 
//			
//			HttpSession session=request.getSession();
//			session.setAttribute("username", uname);
//			response.sendRedirect("l_login.jsp");
//			
//			//response.sendRedirect("index.html");
//		}
//		else {
//			
//			response.sendRedirect("index.html");
//		}
	}

}