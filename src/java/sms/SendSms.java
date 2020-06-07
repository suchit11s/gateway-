package sms;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.swing.text.html.HTML;

public class SendSms {
 Map k;
    public SendSms(Map i) 
    {
       this.k=i;
    }
  	//here jdbc code write in which rest details fetched
  
	 public void SendSms(Map rest)//rest hold all information of
	 {   int n=0;
            System.out.println("msg likhna hai message me");//fixed format of msg only run time details will changed
		System.out.println("number me resta ka number likhana");
                String message="details of items"
                       + "amount"+"order_id"+"user address"+"user number"+"user name"+"Accept order click here "+"http://localhost:8080/webprac/paytm_page/sms2.jsp?n=12334";//dekh lena 
                String number="rest me se mobile number likal lena";                                  // upr ki link dekhna hai abhi
                
		try
		{
		
		String apiKey="D2qnevNtUdusOYhXawcBSTzEiW3Ig6AJ71pLQboMRrmZ5H9jK8FDr7OABRShmiPptocWzT6N3KJvbj4Z";
		String sendId="FSTSMS";
		//important step...
		message=URLEncoder.encode(message, "UTF-8");
		String language="english";
		
		String route="p";
		
		
		String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
		
		
		
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
