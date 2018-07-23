/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.model.Supplier;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SupplierDAO {

    public static boolean insert(Supplier sup) {
        boolean check = false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;

        if (con != null) {
            String sql = "insert into supplier_tbl (name, email, country, city, street, postal_code, "
                    + "phone_no, bank_name, acc_no) values(?,?,?,?,?,?,?,?,?)";
            try {
                ps = con.prepareStatement(sql);

                ps.setString(1, sup.getName());
                ps.setString(2, sup.getEmail());
                ps.setString(3, sup.getCountry());
                ps.setString(4, sup.getCity());
                ps.setString(5, sup.getStreet());
                ps.setInt(6, sup.getPostalcode());
                ps.setLong(7, sup.getPhone());
                ps.setString(8, sup.getAcc_bank());
                ps.setLong(9, sup.getAcc_no());

                int i = ps.executeUpdate();
                if (i == 1) {
                    check = true;
                    System.out.println("1 Record inserted!!!!");
                } else {
                    System.out.println("Failed to insert record");

                }
            } catch (SQLException ex) {
                Logger.getLogger(SupplierDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                if (ps != null) {
                    try {
                        ps.close();
                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
                if (con != null) {
                    try {
                        con.close();
                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
            }

        }
        return check;

    }

    public static ArrayList<Supplier> getAllSuppliers() {
        ArrayList<Supplier> al = new ArrayList<>();

        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "select * from supplier_tbl";
            try {
                ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    al.add(new Supplier(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("country"),
                            rs.getString("city"),
                            rs.getString("street"),
                            rs.getInt("postal_code"),
                            rs.getLong("phone_no"),
                            rs.getString("email"),
                            rs.getLong("acc_no"),
                            rs.getString("bank_name")
                    ));
                }

            } catch (SQLException e) {
                System.out.println(e.getMessage());
            } finally {
                if (ps != null) {
                    try {
                        ps.close();
                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
                if (con != null) {
                    try {
                        con.close();
                    } catch (SQLException e) {
                        System.out.println(e.getMessage());
                    }
                }
            }
        }

        return al;

    }

    public static Supplier selectById(int id) {

        // Supplier supplier = null;
        Supplier supplier1 = null;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps ;

        if (con != null) {
            String sql = "select * from supplier_tbl where id=?";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    supplier1 = new Supplier(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("country"),
                            rs.getString("city"),
                            rs.getString("street"),
                            rs.getInt("postal_code"),
                            rs.getLong("phone_no"),
                            rs.getString("email"),
                            rs.getLong("acc_no"),
                            rs.getString("bank_name")
                    );

                }

            } catch (SQLException e) {
                System.out.println(e);
            }

        }
        return supplier1;
    }

    public static boolean update(Supplier supplier) {
        boolean update=false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps ;
        if (con != null) {
            String sql = "update supplier_tbl set "
                    + "name=?, email=?, country=?, city=?, street=?,"
                    + " postal_code=?, phone_no=?, bank_name=?, acc_no=?"
                    + " where id=?";

            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, supplier.getName());
                ps.setString(2, supplier.getEmail());
                ps.setString(3, supplier.getCountry());
                ps.setString(4, supplier.getCity());
                ps.setString(5, supplier.getStreet());
                ps.setInt(6, supplier.getPostalcode());
                ps.setLong(7, supplier.getPhone());
                ps.setString(8, supplier.getAcc_bank());
                ps.setLong(9, supplier.getAcc_no());
                ps.setInt(10, supplier.getId());
                
               
                int i = ps.executeUpdate();
                if (i == 1) {
                    update=true;
                    System.out.println("Record update");
                }
            } catch (SQLException e) {
                System.out.println(e);
                
            }

        }
     return update;   
    }

    public static void delete(int id) {

        Connection con = DBConnection.connectDB();
        PreparedStatement ps;

        if (con != null) {
            String sql = "delete from supplier_tbl where id=?";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, id);

                int i = ps.executeUpdate();
                if (i == 1) {
                    System.out.println("Record deleted");
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }

    }

 

}
