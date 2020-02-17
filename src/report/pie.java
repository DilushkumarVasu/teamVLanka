package report;

import java.awt.BasicStroke;
import java.awt.Color;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.data.jdbc.JDBCPieDataset;

//import javax.servlet.annotation.WebServlet;

//@WebServlet("/login")
public class pie extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		String url="jdbc:mysql://localhost/vlanka";
		String username="root";//localhost username
		String pass="";//localhost password
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,username,pass);
		}
		catch (Exception e) {
		
		e.printStackTrace();
	}
		JDBCPieDataset dataset= new JDBCPieDataset(con);
		try {
			dataset.executeQuery("select percent,freq from gampaha order by freq desc");
			JFreeChart chart=ChartFactory.createPieChart("Gampaha", dataset, true, true, false);
			chart.setBorderPaint(Color.black);
			chart.setBorderStroke(new BasicStroke(10.0f));
			chart.setBorderVisible(true);
			if(chart!=null) {
				int width=500;
				int height=350;
				final ChartRenderingInfo info=new ChartRenderingInfo(new StandardEntityCollection());
				response.setContentType("image/png");
				OutputStream out=response.getOutputStream();
				ChartUtilities.writeChartAsPNG(out,chart,width,height,info);
			}
		}
			catch (Exception e) {
				
				e.printStackTrace();
			}
				
			
	}
			
			
		
		
		
	}

