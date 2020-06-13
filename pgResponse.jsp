<%@page import="paytm_java.PaytmConstants"%>
<%@page import="sms.SendSms"%>
<%@page import="sms.SendSms2"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
<%@page import="sms.SendSms"%>
<%
Enumeration<String> paramNames = request.getParameterNames();
Map<String,String> coredata=new Hashtable<String,String>();
Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
boolean isValideChecksum = false;
String outputHTML="";
try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	if(isValideChecksum && parameters.containsKey("RESPCODE"))
        {if(parameters.get("RESPCODE").equals("01"))
        {
	Set j=parameters.entrySet();
          Iterator i=j.iterator();
          while(i.hasNext())
          {
           Map.Entry l=(Map.Entry)i.next();
            if(l.getKey().equals("BANKNAME"))
             coredata.put(l.getKey().toString(),l.getValue().toString());
             if(l.getKey().equals("ORDERID"))
             coredata.put(l.getKey().toString(),l.getValue().toString());
               if(l.getKey().equals("STATUS"))
             coredata.put(l.getKey().toString(),l.getValue().toString());
                 if(l.getKey().equals("TXNAMOUNT"))
             coredata.put(l.getKey().toString(),l.getValue().toString());
                   if(l.getKey().equals("TXNDATE "))
             coredata.put(l.getKey().toString(),l.getValue().toString());
                     if(l.getKey().equals("TXNID"))
             coredata.put(l.getKey().toString(),l.getValue().toString());
           }
        
        new SendSms().SendSms(coredata);
        
	}else{outputHTML="<b>Payment Failed.</b>";
        }
	}else{
		outputHTML="<b>Checksum mismatched.</b>";
	}
}catch(Exception e){
    
    outputHTML=e.toString();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= outputHTML %>
</body>
</html>