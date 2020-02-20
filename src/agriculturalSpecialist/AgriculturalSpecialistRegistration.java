package agriculturalSpecialist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userTypes.*;
//import userTypes.Farmer;

/**
 * Servlet implementation class AgriculturalSpecialistRegistration
 */
@WebServlet("/AgriculturalSpecialistRegistration")
public class AgriculturalSpecialistRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgriculturalSpecialistRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("11111111111");
		
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String speciality = request.getParameter("speciality");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String tp = request.getParameter("phone_number");
		String region = request.getParameter("region");
		String password = request.getParameter("password");
		
		System.out.println("222222222222222222222");
		
		Boolean bSuccess = AgrSpecialist.Register(name, nic, speciality, address, email, tp, region, password);
		
		System.out.println("333333333333333333333333");
		
		if(bSuccess)
			response.sendRedirect("AgriculturalSpecialist/AgrSpecialistLogin.jsp");
		else
			response.sendRedirect("AgriculturalSpecialist/AgrSpecialistRegister.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
