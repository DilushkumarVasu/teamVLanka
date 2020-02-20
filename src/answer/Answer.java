package answer;

public class Answer {
	//private int id;
	private int questionId;
	private String body;
	private String nic; //Agri specialist who answered the question
	private String time;
	
	public Answer(int _q, String _body, String _nic, String _time) {
		//id = _id;
		questionId = _q;
		body = _body;
		nic = _nic;
		time = _time;
	}
	
	public String getAnswer() {
		return body;
	}
	public String getAnsweredTime() {
		return time;
	}
}
