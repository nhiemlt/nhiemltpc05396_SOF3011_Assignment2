package util;

import java.security.SecureRandom;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmailSMTP {

    private static final String CHAR_LOWER = "abcdefghijklmnopqrstuvwxyz";
    private static final String CHAR_UPPER = CHAR_LOWER.toUpperCase();
    private static final String NUMBER = "0123456789";
    private static final String DATA_FOR_RANDOM_STRING = CHAR_LOWER + CHAR_UPPER + NUMBER;
    private String tempPassword;
    
    private SecureRandom random = new SecureRandom();

    public String generateRandomTemporaryPassword(int length) {
        if (length < 1) throw new IllegalArgumentException();

        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            // 0-62 (exclusive), random returns 0-61
            int rndCharAt = random.nextInt(DATA_FOR_RANDOM_STRING.length());
            char rndChar = DATA_FOR_RANDOM_STRING.charAt(rndCharAt);
            sb.append(rndChar);
        }
        
        tempPassword = sb.toString();
        return sb.toString();
    }
    
    public String getTempPass() {
    	return this.tempPassword;
    }


    public void sendTemporaryPassword(String emailTo) {
        String temporaryPassword = generateRandomTemporaryPassword(10);
        String senderEmail = "nhiemltpc05396@fpt.edu.vn";
        String senderPassword = "wtga eczf pbim fcra";

        Properties properties = new Properties();
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.starttls.enable", "true");
        properties.setProperty("mail.smtp.host", "smtp.gmail.com");
        properties.setProperty("mail.smtp.port", "587");

        properties.put("mail.smtp.starttls.required", "true");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            message.setSubject("Password Reset Request");
            String emailBody = "<html>"
                    + "<head>"
                    + "<meta charset='UTF-8'>"
                    + "<style>"
                    + "body { font-family: 'Times New Roman', serif; font-size: 16px; line-height: 1.6; margin: 0; padding: 0; }"
                    + "h2 { color: #333333; margin-bottom: 10px; }"
                    + "span { color: #555555; display: block; margin-bottom: 20px; }"
                    + "</style>"
                    + "</head>"
                    + "<body style='background-color: #f4f4f4; padding: 20px; margin: 0;'>"
                    + "<div style='background-color: #ffffff; max-width: 600px; margin: 0 auto; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1);'>"
                    + "<h2>Hello!</h2>"
                    + "<span>Someone has requested a password reset for your account. "
                    + "If this was not you, please ignore this email.</span>"
                    + "<span>Use this temporary password to reset your password: <strong>" + temporaryPassword + "</strong></span>"
                    + "</div>"
                    + "</body>"
                    + "</html>";

            message.setContent(emailBody, "text/html; charset=UTF-8");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    
    public void shareVideo(String emailTo, String videoLink) {
    	String email = "nhiemltpc05396@fpt.edu.vn";
        String password = "wtga eczf pbim fcra";
        Properties prop = new Properties();
        prop.setProperty("mail.smtp.auth", "true");
        prop.setProperty("mail.smtp.starttis.enable", "true");
        prop.setProperty("mail.smtp.host", "smtp.gmail.com");
        prop.setProperty("mail.smtp.port", "587");

        prop.put("mail.smtp.starttls.required", "true");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        Session session = Session.getInstance(prop, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(email, password);
			}
		});

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            message.setSubject("The Foxy");

            String emailBody = "<html>"
                    + "<body style='background-color: #f4f4f4; padding: 20px; margin: 0;'>"
                    + "<div style='background-color: #ffffff; max-width: 600px; margin: 0 auto; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1);'>"
                    + "<h2>Hi there!</h2>"
                    + "<p>Someone has shared a video with you. Click the link below to watch:</p>"
                    + "<p><a href='" + videoLink + "'>" + "Click here" + "</a></p>"
                    + "</div>"
                    + "</body>"
                    + "</html>";

            message.setContent(emailBody, "text/html; charset=UTF-8");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

}
