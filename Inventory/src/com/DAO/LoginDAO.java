/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.model.UserLogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginDAO {

    public static boolean loginCheck(UserLogin userlogin) {
        boolean status = false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps ;
        String sql = "select * from user_login where username=? and password=?";

        try {

            ps = con.prepareStatement(sql);
            ps.setString(1, userlogin.getUsernmae());
            ps.setString(2, userlogin.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                status =true;
                System.out.println("username and password valid");
            }

        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

}
