package sms;
import pkg.MyConnection;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import static java.lang.System.out;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.swing.text.html.HTML;

public class SendSms {

  	
         
        
	 public void SendSms(Map rest)//rest hold all information of
	 {       int n=0;
                 String number=null;
                try
		{
                
		  detail p=new detail();
                  out.println(p.getAddress());
                     out.println(p.getAddress());
                        out.println(p.getAddress());
                 String order_Id=rest.get("ORDERID").toString(); 
                 String amount=rest.get("TXNAMOUNT").toString();
		System.out.println("number me resta ka number likhana");
                String message="details of items\n"
                       +"amount"+"order_id"+p.getAddress()+p.getNumber()+p.getName()+"Accept order click here "+"http://localhost:8080/webprac/paytm_page/sms2?n=12334&rest_number="+"restnumber";//dekh lena 
                                                 // upr ki link dekhna hai abhi
                    
                    
                    
		String apiKey="D2qnevNtUdusOYhXawcBSTzEiW3Ig6AJ71pLQboMRrmZ5H9jK8FDr7OABRShmiPptocWzT6N3KJvbj4Z";
		String sendId="FSTSMS";
		//important step...
		message=URLEncoder.encode(message, "UTF-8");
		String language="english";
		
		String route="p";
		
		
		String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+"9111134436";
		
		
		
		URL url=new URL(myUrl);
		
		HttpsURLConnection con=(HttpsURLConnection)url.openConnection();
		
		
		con.setRequestMethod("GET");
		
		con.setRequestProperty("User-Agent", "Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		System.out.println("Wait..............");
		
		int code=con.getResponseCode();
		
		System.out.println("Response code : "+code);
		
		StringBuffer response=new StringBuffer();
		
		BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		
		while(true)
		{
			String line=br.readLine();
			if(line==null)
			{
				break;
			}
			response.append(line);
		}
		
		System.out.println(response);
		
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	
		
	}
