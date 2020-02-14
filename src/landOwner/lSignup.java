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


@WebServlet("/lSignup")
@MultipartConfig(maxFileSize = 16177215) 
public class  lSignup extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String nic=request.getParameter("nic");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String telenum = request.getParameter("telenum");
		String gender=request.getParameter("gender");
        InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("pdf");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
		String status=request.getParameter("status");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
//		 Part filePart = request.getPart("pdf");
//	        if (filePart != null) {
//	            // prints out some information for debugging
//	            Sy stem.out.println(filePart.getName());
//	            System.out.println(filePart.getSize());
//	            System.out.println(filePart.getContentType());
//	             
//	            // obtains input stream of the upload file
//	            pdf = filePart.getInputStream();
//	        }
		
		lOwnersignup dao=new lOwnersignup();
		
		if(dao.insert(nic,name,address,gender,inputStream,status,telenum,email,uname,pass)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("l_login.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("welcome.jsp");
		}
	}

}