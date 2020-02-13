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
import demo.Encryption;


@WebServlet("/login")
public class login extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
		String a_id=request.getParameter("a_id");
		String pass=request.getParameter("password");
		
		Encryption enc=new Encryption();
		String hash=enc.MD5(pass);
		ALoginDao dao=new ALoginDao();
		
		if(dao.check(a_id, hash)) {
			

			HttpSession session=request.getSession();
			session.setAttribute("a_id", a_id);
			session.setAttribute("name",dao.getName(a_id, hash));
			session.setAttribute("gender",dao.getGender(a_id, hash));
			session.setAttribute("address",dao.getAdd(a_id, hash));
			session.setAttribute("phone",dao.getTele(a_id, hash));
			session.setAttribute("email",dao.getEmail(a_id, hash));
			
			
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
