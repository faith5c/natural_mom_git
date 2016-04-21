package com.nmom.soap.svc.member;

import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

import com.nmom.soap.data.model.member.MyEmail;



public class MyEmailNotiImple implements IMailRegistrationNotification {
	
	private MailSender mailSender;

	
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	
	// Implements method
	@Override
	public void sendMyEmail(MyEmail me) {
		SimpleMailMessage smm = new SimpleMailMessage();
		smm.setTo(me.getTo());
		smm.setFrom(me.getFrom());;
		smm.setSubject(me.getSubject());
		smm.setText(me.getText());
		try{
			mailSender.send(smm);
		}catch(MailException e){
			e.printStackTrace();
		}
		
	}

}
