package com.shoppingmall.mail;

import org.apache.commons.mail.HtmlEmail;

public class MailUtil {
	public static void sendMail(String email, String subject, String msg) throws Exception
	{
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "bg9292";
		String hostSMTPpwd = "sa++1589";
		
		String fromEmail = "bg9292@naver.com";
		String fromName = "최병근";
		
		try
		{
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true);
			
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(587);
			
			mail.setAuthentication(hostSMTPid, hostSMTPpwd);
			mail.setStartTLSEnabled(true);
			
			mail.addTo(email);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static String getNewPwd() throws Exception{
		char[] charSet = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
						   'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
						   'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
						   'U', 'V', 'W', 'X', 'Y', 'Z'};
		
	
		StringBuffer newKey = new StringBuffer();
		
		for(int i = 0; i < 10; i++)
		{
			int idx = (int) (charSet.length * Math.random());
			newKey.append(charSet[idx]);
		}
		
		return newKey.toString();
	}
}
