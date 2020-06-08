<%-- 
    Document   : newjsp
    Created on : May 30, 2020, 2:30:19 PM
    Author     : suchit chawda
--%>

<%--
 <%
     
User user = (User) session.getAttribute("current-user");
if (user == null) {

session.setAttribute("message", "You are not logged in !! Login first to access checkout page");
response.sendRedirect("");
return;

}
        %>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
 
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(e) {
  if (!e.target.matches('.dropbtn')) {
  var myDropdown = document.getElementById("myDropdown");
    if (myDropdown.classList.contains('show')) {
      myDropdown.classList.remove('show');
    }
  }
}
</script>
        <%@include file="common_css.jsp"%>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-light s2 ">
     <a style="color: #7f8c8d;padding-left: 5%;" class="navbar-brand" href=""><b>HungerSaver</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"  aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul  class="navbar-nav ml-auto">
            <li class="nav-item">
                <a style="color:#7f8c8d;" class="nav-link" href="/html and css/signin.html"><b><%=name%></b></a>
            </li>
           
          </ul>
       <%!
           String name="suchitchawda@gmail.com";
       %>
       <div class="dropdown">
    <button class="dropbtn">
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div> 
</div>
        
      
    </nav>
        <div style="background-color: #b8e994;padding: 5%;" class="container-fluid">  
            <div class="container" > 
         <div class="row">
             <div class="col-sm-8"><div class="card">
       <!--form details -->
      <div class="card-body">     
          <h3 style="text-align: center;">Your Detail</h3>
          <form action="payuform.jsp">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInput">Your Name</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Name">
  </div>
      <div class="form-group">
    <label for="exampleInput">Your Number</label>
    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Number">
  </div>
   <div class="form-group">
    <label for="exampleFormControlTextarea1">Your address</label>
    <textarea placeholder="Enter your address" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
                     
       <div class="container text-center">       
         
           <button type="submit" class="btn btn-outline-success" >Place Order</button>
        <button type="submit" class="btn btn-outline-primary">  <a style="text-decoration: none;" href="payuform.jsp">Continue order</a></button>
       </div>

          </form>
      </div>
  </div>

</div>

</div>

            </div>
        </div>
           <%@include file="footer1.jsp" %>
     
       
    </body>
</html>
