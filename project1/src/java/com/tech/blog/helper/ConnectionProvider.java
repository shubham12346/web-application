
package com.tech.blog.helper;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
     
          try{
          if(con== null)
          {
              try {
                  Class.forName("com.mysql.cj.jdbc.Driver");
              } catch (ClassNotFoundException ex) {
                  Logger.getLogger(ConnectionProvider.class.getName()).log(Level.SEVERE, null, ex);
              }
               
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","");
             
          }
          
            
          }catch(SQLException f)
          {
              f.printStackTrace();
          }
             return con;

    }
    
}
