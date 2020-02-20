package agriculturalSpecialist;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseConnectivity.dbConnection;
import userTypes.AgrSpecialist;

/**
 * Servlet implementation class AgrSpecialistSubmitAnswer
 */
@WebServlet("/AgrSpecialistSubmitAnswer")
public class AgrSpecialistSubmitAnswer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgrSpecialistSubmitAnswer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.err.println(request.getParameter("question"));
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		String nic = request.getParameter("nic");
		
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now(); 
		String timeStamp = now.toString();
		
		AgrSpecialist.answer(Integer.parseInt(question), answer, nic, timeStamp);
		
		response.sendRedirect("AgriculturalSpecialist/AgrSpecialistUnansweredQuestions.jsp");
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
