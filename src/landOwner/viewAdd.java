package landOwner;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import landOwner.dao.viewAddDao;


@WebServlet("/viewadd")
public class viewAdd {

		String price;
		String details;
		int telenum;
		private String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		private String getDetails() {
			return details;
		}
		public void setDetails(String details) {
			this.details = details;
		}
		private int getTelenum() {
			return telenum;
		}
		private void setTelenum(int telenum) {
			this.telenum = telenum;
		}
}
