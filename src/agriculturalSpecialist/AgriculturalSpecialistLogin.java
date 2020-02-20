package agriculturalSpecialist;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import userTypes.AgrSpecialist;

import java.util.*;

/**
 * Servlet implementation class AgriculturalSpecialistLogin
 */
@WebServlet("/AgriculturalSpecialistLogin")
public class AgriculturalSpecialistLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgriculturalSpecialistLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nic = request.getParameter("nic");
		String pwd = request.getParameter("pass");
		
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			c.setMaxAge(0);
			response.addCookie(c);
		}
		
		try {
						
			
			//validating credentials
			if(AgrSpecialist.checkCredentials(nic, pwd)) { //valid
				Cookie c = new Cookie("login", nic);
				c.setMaxAge(86400);
				c.setDomain(request.getServerName());
				response.addCookie(c);
				
				
				response.sendRedirect("AgriculturalSpecialist/AgrSpecialistDashboard.jsp");
			}
			else { //invalid
				//request.getRequestDispatcher("/AgriculturalSpecialist/Notices.jsp").forward(null, null);
				request.setAttribute("error", "Invalid NIC or password");
				request.getRequestDispatcher("AgriculturalSpecialist/AgrSpecialistLogin.jsp").forward(request, response);
				//response.sendRedirect("AgriculturalSpecialist/AgrSpecialistLogin.jsp");
				//response.sendError(1, "Invalid NIC or pwd");
				//request.getRequestDispatcher("/AgrSpecialistLogin.jsp").include(request, response);
				//response.getWriter().print("<script> window.alert(\"Error\"); </script>)");
				//response.sendRedirect("AgriculturalSpecialist/AgrSpecialistLogin.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
