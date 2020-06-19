<%-- 
    Document   : new
    Created on : Jun 13, 2020, 11:57:38 AM
    Author     : suchit chawda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="newcss.css">
    </head>
    <body>
        <div class="container">
  <div class="printer-top"></div>
    
  <div class="paper-container">
    <div class="printer-bottom"></div>

    <div class="paper">
      <div class="main-contents">
        <div class="success-icon">&#10004;</div>
        <div class="success-title">
          Payment Complete
        </div>
        <div class="success-description">
           Lorem Ipsum has been the industry's standard dummy text.
        </div>
        <div class="order-details">
          <div class="order-number-label">Order Number</div>
          <div class="order-number"><%=request.getParameter("")%></div>
        </div>
        <div class="order-footer">Thank you!</div>
      </div>
      <div class="jagged-edge"></div>
    </div>
  </div>
</div>
    </body>
</html>
