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




import landOwner.dao.postAddDao;


@WebServlet("/postadd")
@MultipartConfig(maxFileSize = 16177215) 
public class  postAdd extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String telenum = request.getParameter("tele");
		String price=request.getParameter("price");
		String landdetails=request.getParameter("status");
		String uname=request.getParameter("uname");
        InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("pdf");
        if (filePart != null) {

            inputStream = filePart.getInputStream();
        }
		
		
//		 Part filePart = request.getPart("pdf");
//	        if (filePart != null) {
//	            // prints out some information for debugging
//	            System.out.println(filePart.getName());
//	            System.out.println(filePart.getSize());
//	            System.out.println(filePart.getContentType());
//	             
//	            // obtains input stream of the upload file
//	            pdf = filePart.getInputStream();
//	        }
		
		postAddDao dao=new postAddDao();
		
		if(dao.insert(telenum,price,landdetails,uname,inputStream)) { 
			
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("landownerhome.jsp");
			
			//response.sendRedirect("index.html");
		}
		else {
			
			response.sendRedirect("index.html");
		}
	}

}
