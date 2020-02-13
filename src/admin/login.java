package admin;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dilush.dao.LoginDao;

import admin.dao.ALoginDao;


@WebServlet("/login")
public class login extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
		String a_id=request.getParameter("a_id");
		String password=request.getParameter("password");
		
		/*MessageDigest digest = MessageDigest.getInstance("SHA-256");
		String hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8)).toString();*/
		
		ALoginDao dao=new ALoginDao();
		
		if(dao.check(a_id, password)) {
			

			HttpSession session=request.getSession();
			session.setAttribute("a_id", a_id);
			session.setAttribute("name",dao.getName(a_id, password));
			session.setAttribute("gender",dao.getGender(a_id, password));
			session.setAttribute("address",dao.getAdd(a_id, password));
			session.setAttribute("phone",dao.getTele(a_id, password));
			session.setAttribute("email",dao.getEmail(a_id, password));
			
			
			response.sendRedirect("Admin.jsp");
		}
		else {
			
			response.sendRedirect("Admin_login.jsp");
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}





}
