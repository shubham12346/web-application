
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
     
        <style>
            *{
                padding:0px;
                margin: 0px;
               
            }
        </style>
           <link href="css/navcss.css" rel="stylesheet" type="text/css"/>
        <link href="css/mainbodycss.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

    <nav>
        <div class="navbar">
          <ul>
              <li> <a href="#" > Home </a> </li>
              <li > <a href="#"> Contact us</a> </li>
              <li > <a href="login.jsp"> Login</a> </li>
              <li><a href="register.jsp"> Sign up</a> </li>
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
    
       
       <!-- body-->


         
     <div class="container">
           <div class="upper">
               <h3> Welcome to techblog</h3>
               <pre> Technology blogs are great resources if you want the latest tech news
                </pre>
                 <pre> 
 Technical blogging is a great way to share your expertise while building a potentially valuable 
 readership. It can help you to document projects, or provide guidance to other web users. 
 You can also monetize your content, or use your blog to market your services.


                </pre>
                <br>
                
                <button  class"btn"> <a href="register.jsp">Start now</a> </button>
                <button  class="btn1"> <a href="login.jsp">Login </a></button>
           </div>
       </div>

       <div class="container2">
           <div class="first" id="fir"> first</div>
           <div class="first"> second</div>
           <div class="first"> third </div>
           <div class="first"> fourth</div>
           <div class="first"> fifth</div>
           <div class="first"> Sixth</div>
       </div>


      
    
    </body>
</html>
