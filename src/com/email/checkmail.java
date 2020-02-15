package com.email;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.websocket.SendResult;

//Send email using gmail in java
public class checkmail {
  public static void transfer(String email) {
             
              
              
		final String username = "teamvlanka@gmail.com";
		final String password = "vlanka1996";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
              props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Java Mailer");
			message.setText("Hello you are successfully registered. http://localhost:8080/VLanka/Admin_login.jsp");

			Transport.send(message);
			

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
              }
  
  
  
  
  public static void Farmertransfer(String email) {
      
      
      
		final String username = "teamvlanka@gmail.com";
		final String password = "vlanka1996";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Java Mailer");
			message.setText("Hello you are successfully registered. http://localhost:8080/VLanka/f_login.jsp");

			Transport.send(message);
			

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
            }
            
	
              
	
  
}