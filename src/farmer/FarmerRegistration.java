package farmer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userTypes.Farmer;

/**
 * Servlet implementation class FarmerRegistration
 */
@WebServlet("/FarmerRegistration")
public class FarmerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FarmerRegistration() {
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
		// TODO Auto-generated method stu
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String tp = request.getParameter("tp");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		/*Farmer f = new Farmer();
		f.Register(name, nic, address, gender, tp, email, username, password);
		response.sendRedirect("f_login.jsp");
//		f.foo();
//		Farmer.foo();*/
		if(nic!=null && name!=null && address!=null && gender!=null && tp!=null && email!=null && username!=null && password!=null)
		{
			Farmer f = new Farmer();
			f.Register(name, nic, address, gender, tp, email, username, password);
			response.sendRedirect("f_login.jsp");
		}

		
	}

}
