package htmlBlocks;

public class AgriculturalSpecialistHTML {
	public static String displayNotices(String title, String body, String publishedTime) {
		String text = 
				"                <div class=\"row\">\r\n" + 
				"                    <div class=\"col-md-12\">\r\n" + 
				"                        <div class=\"card\">\r\n" + 
				"                            <div class=\"header\">\r\n" + 
				"                                <h4 class=\"title\">"+ title + "</h4>\r\n" + 
				"                            </div>\r\n" + 
				"                            <div class=\"content\">\r\n" + 
				"								<p class=\"category\">"+ body + "</p>\r\n" + 
				"								<br>\r\n" + 
				"                                <div class=\"footer\">\r\n" + 
				"                                    <div class=\"stats\">\r\n" + 
				"                                        <i class=\"fa fa-clock-o\"></i>" + publishedTime + "\r\n" + 
				"                                    </div>\r\n" + 
				"                                </div>\r\n" + 
				"                            </div>\r\n" + 
				"                        </div>\r\n" + 
				"					</div>\r\n" + 
				"				</div>\r\n";;
		
		
		return text;
	}
	
	public static String displayQuestions(int id, String title, String body, String askedTime) {
		String text = "<div class=\"panel panel-default\">\r\n" + 
				"		  	<div class=\"panel-heading\">" + title + "</div>\r\n" + 
				"	    	<div class=\"panel-body\">" + body + "</div>\r\n" + 
				"<form action=\"#\">\r\n" + 
				"      <input type=\"hidden\" class=\"form-control\" placeholder=\"\"  name=\"id\" hidden>\r\n" + 
				"    <button type=\"submit\" class=\"btn btn-default\" align=\"right\">Answer</button>\r\n" + 
				"  </form>"+
				"		  	</div>\r\n";
				;
		return text;
	}
	
	public static String displayFullQuestion(String title, String body, String askedTime, String asker, String region) {
		return null;
	}
}
