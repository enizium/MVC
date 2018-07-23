/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.model.ProductSupplier;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RelationDAO {

    public static void addRelation(int pid, int sid) {
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;
        if (con != null) {
            String sql = "insert into product_supplier (pid, sid) values(?,?)";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, pid);
                ps.setInt(2, sid);
                if (ps.executeUpdate() > 0) {
                    System.out.println("RelationShip added");
                }
            } catch (SQLException se) {
                System.out.println(se.getMessage());
            }
        }

    }

    public static ArrayList<ProductSupplier> getAllRelated() {
        ArrayList<ProductSupplier> al = new ArrayList<>();
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;
        if (con != null) {
            String sql = "select ps.id, p.id, p.name, s.id, s.name from product_supplier as ps,"
                    + "product_tbl as p, supplier_tbl as s "
                    + "where ps.pid=p.id and ps.sid=s.id";
            try {
                ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    al.add(new ProductSupplier(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getString(3),
                            rs.getInt(4),
                            rs.getString(5)));

                }

            } catch (SQLException se) {
                System.out.println(se.getMessage());
            }
        }
        return al;
    }

    public static ProductSupplier selectById(int id) {

        ProductSupplier prosup = null;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;

        if (con != null) {
            String sql = "select ps.id, p.id, p.name, s.id, s.name from product_supplier as ps,"
                    + "product_tbl as p, supplier_tbl as s "
                    + "where ps.pid=p.id and ps.sid=s.id and ps.id=?";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    prosup = new ProductSupplier(
                            rs.getInt(1),
                            rs.getInt(2),
                            rs.getString(3),
                            rs.getInt(4),
                            rs.getString(5));
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return prosup;
    }

    public static boolean update(ProductSupplier prosup) {
        boolean status = false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps;

        if (con != null) {
            String sql = "update product_supplier set pid=?, sid=? where id=? ";
            try {

                ps = con.prepareStatement(sql);
                ps.setInt(1, prosup.getPid());
                ps.setInt(2, prosup.getSid());
                ps.setInt(3, prosup.getId());

                int i = ps.executeUpdate();
                if (i == 1) {
                    status = true;
                    System.out.println("Record update");
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }

        }
        return status;
    }
}
