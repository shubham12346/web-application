
<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
             <style>
            *{
                padding:0px;
                margin: 0px;
               
            }
        </style>
        <link href="css/navcss.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
           <nav>
        <div class="navbar">
          <ul>
              <li> <a href="index.jsp" > Home </a> </li>
              <li > <a href="#"> Contact us</a> </li>
              <li > <a href="#"> Login</a> </li>
              <li><a href="#"> Sign up</a> </li>
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
              <input type="searhbox" placeholder="search anything " class="search" >
              <button type="submit">Search </button>
          </div>
             </div>
      </nav>
        
        
        
        
        <!-- Login form-->
        <form action="loginServlet" method="post">
            <div class="box"><!-- comment -->
               
                <h3> Login</h3>
                <%
                    Message m =(Message)session.getAttribute("msg");
                    if(m!=null)
                    { %>
                    
                    <div class="alert-primary" role="alert" style="background-color: red">
                        <%= m.getContent()%>
                    </div>
                    
                    <%
                        session.removeAttribute("msg");
                    }
                %>
                <div inner-box>
                    Enter your email <br><input type="email" name="email" required><!--  -->
                    Password <input type="password" name="password" required>
                    <button type="submit" value="login" class="btn">login </button>
                       <button type="reset" value="reset" class="btn">Reset</button>
                </div>
                
            </div>
            
            
        </form>
    </body>
</html>
