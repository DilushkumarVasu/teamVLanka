package questionAndAnswer;

public class QuestionAndAnswer {
	private question.Question Q;
	private answer.Answer A;
	
	public QuestionAndAnswer(question.Question _Q, answer.Answer _A) {
		Q = _Q;
		A = _A;
	}

	public String getAnswer() {
		return A.getAnswer();
	}
	public String getAnsweredTime() {
		return A.getAnsweredTime();
	}
}
