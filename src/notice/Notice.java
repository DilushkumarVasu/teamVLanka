package notice;

public class Notice {
	private String title;
	private String body;
	private String date;
	
	public Notice(String ttl, String bd, String dt) {
		title = ttl;
		body = bd;
		date = dt;
	}
	
	public String getTitle() {
		return title;
	}
	
	public String getBody() {
		return body;
	}
	
	public String getDate() {
		return date;
	}
}
