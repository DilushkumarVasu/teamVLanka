package rsrccollector;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rsrccollector.dao.RsrcViewAdddao;

@WebServlet("/ViewAdd")
public class ViewAdd extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ViewAdd() {
        super();
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int addId = Integer.parseInt(request.getParameter("id"));
        RsrcViewAdddao dao = new RsrcViewAdddao();
         
        try {
        	ViewAdd view = dao.get(addId);
             
            request.setAttribute("view", view);
            String page = "/RsrcViewAdd.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
            requestDispatcher.forward(request, response);              
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
         
    }

	 public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }
}