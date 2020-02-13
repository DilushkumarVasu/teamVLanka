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
	
	public static String displayQuestions(String title, String body, String askedTime) {
		String conciseBody = body.substring(0, 250);
		String text = 
				"                <div class=\"row\">\r\n" + 
						"                    <div class=\"col-md-12\">\r\n" + 
						"                        <div class=\"card\">\r\n" + 
						"                            <div class=\"header\">\r\n" + 
						"                                <h4 class=\"title\">"+ title + "</h4>\r\n" + 
						"                            </div>\r\n" + 
						"                            <div class=\"content\">\r\n" + 
						"								<p class=\"category\">"+ conciseBody + "</p>\r\n" + 
						"								<br>\r\n" + 
						"                                <div class=\"footer\">\r\n" + 
						"                                    <div class=\"stats\">\r\n" + 
						"                                        <i class=\"fa fa-clock-o\"></i>" + askedTime + "\r\n" + 
						"                                    </div>\r\n" + 
						"                                </div>\r\n" + 
						"                            </div>\r\n" + 
						"                        </div>\r\n" + 
						"					</div>\r\n" + 
						"				</div>\r\n";;
						
		return text;
	}
	
	public static String displayFullQuestion(String title, String body, String askedTime, String asker, String region) {
		return null;
	}
}
