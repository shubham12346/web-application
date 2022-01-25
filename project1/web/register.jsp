

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
        </style>
        
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
    </head>
    <body>
        
 
        <!-- Registration page-->
 
        <div class="container-register">
        <div class="register-form">
            <form id="regform" action="RegisterServlet" method="post">
                <div class="head-register"> <h3> Register</h3></div>
                <div class="inputs"> 
                    <div class="inputs-inside">
                     
                        <div class="firstin">
                            <input name="fname" type="text" placeholder="first name"  required>
                            <input type="text" placeholder="last name" name"lastname" >
                        </div>
                          <div class="secondin">
                              <input name="fassword" type="password" placeholder="enter your password" required >
                           
                        </div>
                        <div class"thirdin>
                            <p> Enter your age :</p><input type="number" name="age"><!-- comment -->
                            
                        </div>
                         <div class="em">
                            <input name="fmail"  type="email" placeholder="Enter your email id" required>
                        
                        </div>
                        <div class="fourthin">
                            <p class="pa">Write some thing about you <br>
                                <textarea  name="fbout" cols="30" rows="10" > </textarea><!-- comment -->
                            </p>
                        </div>
                        <div class="fifthin"> 
                            <p class="pa">Accept on terms and Agreement  </p> <input type="radio" name="check" >
                        </div>
                        
                      
                        
                    </div>
                    
                    
                 
                </div>
                <div   id="loader"style="display:none;">
                     <span  class="fa fa-refresh fa-spin fa-4x" ></span>
                     <h3> Please wait ..</h3>
                </div>
           
               
                <br>
                <button type="submit"  id="submit-btn">submit </button>
            </form>
        </div>
        </div>

      <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <script>
          $(document).ready(function()
          {
               console.log("hello")
               
                $('#regform').on('submit',function(event){
                     event.preventDefault();// to prevent from going to servlet
                     let form = new FormData(this);
                   
                     // sendthid dsts to  rethisgister servlet
                     $("#submit-btn").hide();
                     $("#loader").show();
                     console.log(form);
                       
                    
                     $.ajax({
                        
                          url:"RegisterServlet",
                          type:'Post',
                          data:form,
                          
                          success:function(data,textStatus,jqXHR){
                           console.log(data);
                         
                            $("#submit-btn").show(); 
                            $("#loader").hide();
                            if(data.trim()== "done")
                            {
                                swal(" you are sucessfuly registered ... redirecting you to login page")
                               .then((value) => {
                               window.location="login.jsp"; 
                                  });
                            }
                            else
                            {
                                swal("something went wrong ....");                            }
                           

                          },
                          error:function(jqXHR,textStatus,errorThrown){
                           console.log("hello i am not here");
                             $("#submit-btn").show(); 
                           $("#loader").hide();
                            
                            console.log(data)
                       

                          },
                          processData :false,
                          contentType:false

                     });
                 });
               
          });
    
        </script>
        
        
       
    </body>
</html>
