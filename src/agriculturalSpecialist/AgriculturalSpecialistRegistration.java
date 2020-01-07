package agriculturalSpecialist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userTypes.AgrSpecialist;
import userTypes.Farmer;

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
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		//add riderect code here
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String speciality = request.getParameter("speciality");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String tp = request.getParameter("phone_number");
		String region = request.getParameter("region");
		
		AgrSpecialist a = new AgrSpecialist();
		a.Register(name, nic, speciality, address, email, tp, region);
	}

}
