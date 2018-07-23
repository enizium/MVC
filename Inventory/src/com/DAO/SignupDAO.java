/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.itn.dto.UserDTO;
import com.model.UserInfo;
import com.model.UserLogin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SignupDAO {

    public static void insertUserInfo(UserInfo userinfo) {
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;
        if (con != null) {
            String sql = "insert into user_info(name, email, gender, phone, role) values(?,?,?,?,?)";
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, userinfo.getName());
                ps.setString(2, userinfo.getEmail());
                ps.setString(3, userinfo.getGender());
                ps.setLong(4, userinfo.getPhone());
                ps.setString(5, userinfo.getRole());
                int i = ps.executeUpdate();
                if (i == 1) {
                    System.out.println("1 Record inserted in user_info!!!!");
                } else {
                    System.out.println("Failed to insert record in user_info");
                }

            } catch (SQLException ex) {
                Logger.getLogger(SignupDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void insertUserLogin(UserLogin userlogin) {
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;
        int id = 0;
        if (con != null) {

            String sql1 = "select id from user_info where email=?";
            try {
                ps = con.prepareStatement(sql1);
                ps.setString(1, userlogin.getEmail());

                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    id = rs.getInt("id");
                    System.out.println(id + " fetch from user_info");
                }

            } catch (SQLException ex) {
                Logger.getLogger(SignupDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

            String sql = "insert into user_login(username, password, user_id) values(?,?,?)";
            try {
                ps = con.prepareStatement(sql);

                ps.setString(1, userlogin.getUsernmae());
                ps.setString(2, userlogin.getPassword());
                ps.setInt(3, id);
                int i = ps.executeUpdate();
                if (i == 1) {

                    System.out.println("1 Record inserted in user_login!!!!");
                } else {
                    System.out.println("Failed to insert record in user_login");
                }
            } catch (SQLException ex) {
                Logger.getLogger(SignupDAO.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public static ArrayList<UserDTO> getAllUser_info() {
        ArrayList<UserDTO> alluser = new ArrayList<>();
        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "select userinfo.* , userlogin.* from user_info as  userinfo, user_login as userlogin where userinfo.id=userlogin.user_id";
            try {
                ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    alluser.add(new UserDTO(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("gender"),
                            rs.getString("role"),
                            rs.getLong("phone"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("active")
                    ));
                }
            } catch (SQLException ex) {
                Logger.getLogger(SignupDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return alluser;
    }

    public static UserDTO selectById(int id) {
        UserDTO user1 = null;
        UserInfo userinfo = null;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;
        int user_id;
        if (con != null) {
            String sql1 = "select userinfo.* , userlogin.* from user_info as  "
                    + "userinfo, user_login as userlogin where "
                    + "userinfo.id=? and userlogin.user_id=? ";
            try {
                ps = con.prepareStatement(sql1);
                ps.setInt(1, id);
                ps.setInt(2, id);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    user1 = new UserDTO(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("gender"),
                            rs.getString("role"),
                            rs.getLong("phone"),
                            rs.getString("username"),
                            rs.getString("active")
                    );
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return user1;

    }

    public SignupDAO() {
    }

}
