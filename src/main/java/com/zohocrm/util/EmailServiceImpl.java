package com.zohocrm.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
//these annotation shows this is a special spring class
//@Component or @Service is used but @Component is more preferable
@Component 
public class EmailServiceImpl implements EmailService {

	@Autowired 
	private JavaMailSender javaMailSender;
	
	@Override
	public void sendEmail(String to, String sub, String msg) {
		 SimpleMailMessage mailMessage = new SimpleMailMessage();
		 mailMessage.setTo(to);
		 mailMessage.setSubject(sub);
		 mailMessage.setText(msg);
		 
		 //to send the email this is like send button//inbuilt method .send
		 javaMailSender.send(mailMessage);
	}

}
