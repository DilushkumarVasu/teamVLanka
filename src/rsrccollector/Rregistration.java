package rsrccollector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dilush.dao.LoginDao;
import com.dilush.dao.SignupDao;

import userTypes.RsrcCollector;

/**
 * Servlet implementation class RsrcCollectorRegistration
 */
@WebServlet("/Rregistration")
public class Rregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rregistration() {
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
		//doGet(request, response);
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String area = request.getParameter("area");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		RsrcCollector r = new RsrcCollector();
		r.Register(name, nic, address, email, telephone, area, username, password);
		response.sendRedirect("RsrcCollectLogin.jsp");
//		f.foo();
//		Farmer.foo();
//		if(nic!=null && name!=null && address!=null && gender!=null && tp!=null && email!=null && username!=null && password!=null)
//		{
			/*Farmer f = new Farmer();
			f.Register(name, nic, address, gender, tp, email, username, password);
			response.sendRedirect("f_login.jsp");*/
//		}

		/*SignupDao dao=new SignupDao();
		
        if(dao.check(nic,name,email)) {
			
			HttpSession session=request.getSession();
			session.setAttribute("nic", nic);
			session.setAttribute("name", name);
			session.setAttribute("email", email);
			
		}*/
		System.out.println("test");
		
		
	}

}