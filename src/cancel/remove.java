package cancel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dilush.dao.cancelDao;





@WebServlet("/remove")
public class remove extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id=request.getParameter("user_id");
		String date=request.getParameter("date");
		String user_type=request.getParameter("type");
		String message=request.getParameter("request");
		cancelDao f = new cancelDao();
		f.insert(user_id, date, user_type,message);
		if(user_id!=null && date!=null && user_type!=null && message!=null) {
			response.sendRedirect("remove.jsp");
		}
		}
}
