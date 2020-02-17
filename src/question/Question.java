package question;

public class Question {
	private int id;
	private String nic;
	private String title;
	private String body;
	private String date;
	
	public Question(int _id, String _nic, String _title, String _body, String _date) {
		id = _id;
		nic = _nic;
		title = _title;
		body = _body;
		date = _date;
	}
	
	public int getID() {
		return id;
	}
	public String getNic() {
		return nic;
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
