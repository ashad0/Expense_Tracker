package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    @Autowired
    JavaMailSender mailSender;
    
    public void sendWelcomeMail(String email, String firstName) {
        String subject = "Welcome to Wipro";
        String body = "Hey " + firstName + ",\n\n"
                + "Nagpur Vohra Ni Chali, Julta Minara, Gomtipur, Ahmedabad, Gujarat - 380021\n\n"
                + "Subject: Job Offer for Java Developer Position\n\n"
                + "Dear Ansari Atik,\n\n"
                + "We are pleased to extend this offer of employment for the position of Java Developer at Wipro. "
                + "We were highly impressed with your skills and experience, and we are excited about the prospect of you joining our team.\n\n"
                + "Position Details:\n"
                + "-----------------\n"
                + "Job Title: Java Developer\n"
                + "Department: Software Development\n"
                + "Location: Ahmedabad, Gujarat\n"
                + "Reporting To: Rohit Shah\n"
                + "Employment Type: Full-time\n"
                + "Salary: 50,000 Per Month\n\n"
                + "Your responsibilities will include, but are not limited to, designing, implementing, and maintaining Java applications, "
                + "analyzing user requirements, troubleshooting issues, and collaborating with cross-functional teams to deliver high-quality software solutions.\n"
                + "If You Are Interested Then Contact Us On Same Email./n/n"
                + "Best Regards,\n"
                + "Wipro Limited";
        
        String from = "shaikhhasnain08k@gmail.com";
        
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);
        
        mailSender.send(message);
    }

	public void sendOtpForForgetPassword(String email, String firstName,String otp) {
		String subject = "OTP for Resetpassword";
		String body = "Hey " + firstName
				+ ", It seems you have request for forget password, please use below otp for reset password.  If not then simply ignore the message!OTP:"+otp;
		String from = "shaikhhasnain08k@gmail.com";

		// logic
		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);

		mailSender.send(message);

	}
}	

