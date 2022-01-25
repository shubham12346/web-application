
package com.tech.blog.dao;
import com.tech.blog.entities.User;
//import com.tech.blog.helper.ConnectionProvider;
 import java.sql.*;

public class Userdao {
    private final Connection con;
    
    public Userdao(Connection con)
    {
        this.con = con;
    }
    
    
    // method to insert user to database
    
    public boolean saveUser(User user)
    {
        
        boolean f = false;
        try{
            // query
            
            String query="INSERT INTO `user`( `name`, `email`, `password`, `about`) VALUES (?,?,?,?)";
            // take user to database 
            PreparedStatement ptmt =this.con.prepareStatement(query);
            ptmt.setString(1, user.getName());
            ptmt.setString(2, user.getEmail());
            ptmt.setString(3,user.getPassword());
            ptmt.setString(4, user.getAbout());
            
            
            ptmt.executeUpdate();
            f= true;
            
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return f;
    }
   
    // get user by useremail and password 
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user= null;
        try{
            String querry="select * from `user` where `email`= ? and `password`=?";
            PreparedStatement ptmt = con.prepareStatement(querry);
            ptmt.setString(1, email);
            ptmt.setString(2, password);
            
            ResultSet rs = ptmt.executeQuery();
            if(rs.next())
            {
                user = new User();
                user.setId(rs.getInt("ID"));
                user.setEmail(rs.getString("email"));
                user.setAbout(rs.getString("about"));
                user.setDatetime(rs.getTimestamp("regdate"));
                user.setName(rs.getString("name"));
                user.setProfile(rs.getString("profile"));
                
            }
            else
            {
                user =null; 
            }
            
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return user;
    }
    
}
