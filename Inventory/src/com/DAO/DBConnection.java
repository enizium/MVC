
package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
    
    public static Connection con;
      public static Connection connectDB()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","");
            System.out.println("connection established");
        }
        catch( ClassNotFoundException | SQLException e)
        {
            System.out.println("connetion error!!!");
        }
         return con;
    }
}
