package demo;

public class Main {

	public static void main(String[] args) {
		String password="123456";
		System.out.println("Md5: "+ Encryption.MD5(password));
		System.out.println("SHA1: "+Encryption.SHA1(password));
	}

}
