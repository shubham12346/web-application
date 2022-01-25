

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="errorPage.jsp" %>
<%@page import="com.tech.blog.entities.User" %>
<%
    User user = (User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
        
         <style>
            *{
                padding:0px;
                margin: 0px;
               
            }
        </style>
           <link href="css/navcss.css" rel="stylesheet" type="text/css"/>
        <link href="css/mainbodycss.css" rel="stylesheet" type="text/css"/>
            <link href="css/profile.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        
    <nav>
        <div class="navbar">
          <ul>
              <li> <a href="#" > Home </a> </li>
              <li > <a href="#"> Contact us</a> </li>
             
             <!-- <li><a href="logout"> logout</a> </li>-->
              <li  > Category
                  <div class="submenu "> 
                  <ul>
                      <li> <a href="#"> first</a></li>
                      <li><a href="#"> Second </a></li><!-- comment -->
                       <li><a href="#"> Third</a></li>
                  </ul>
                      </div>
                  
                    
                </li>
           
          </ul>
       
          
          <div class="search-box">
              <ul>
                  
                  <li class="model-btn"> <%= user.getName()%>  </li>
                  <li><a href="logoutServlet">Log out</a></li>
              </ul>
          </div>
             </div>
      </nav>
                  
                  <div class="model-bg">
                      <div class="model">
                          <h2> Your Bio </h2>
                          <label for="name">Name : <%= user.getName() %></label> 
                          <label for="email">Email : <%= user.getEmail() %></label>
                          <label for="time">Time of creation : <%= user.getDatetime() %> </label><br>
                          <button class="model-button"
                                  type="submit"> Edit</button><br>
                          
                      </div>
                      
                  </div>
                     <!-- java script of profile -->
                   
        <h1>Hello World!</h1>
        <%= user.getName() %><br>
          <%= user.getAbout()%><br>
             <%= user.getDatetime()  %><br>
             <script src="js/profile.js" type="text/javascript"></script>
    </body>
</html>
