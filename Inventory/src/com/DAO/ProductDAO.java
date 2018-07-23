package com.DAO;

import com.model.Product;
import java.sql.*;
import java.util.ArrayList;

public class ProductDAO {

    public static boolean insertProduct(Product product) {
        boolean status = false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "insert into product_tbl(name,brand,category,type,image,"
                    + "description,delivered_on,quantity,price) values (?,?,?,?,?,?,?,?,?)";
            try {

                ps = con.prepareStatement(sql);
                ps.setString(1, product.getName());
                ps.setString(2, product.getBrand());
                ps.setString(3, product.getCategory());
                ps.setString(4, product.getType());
                ps.setString(5, product.getImage());
                ps.setString(6, product.getDescription());
                ps.setDate(7, product.getDeliveredOn());
                ps.setInt(8, product.getQuantity());
                ps.setDouble(9, product.getPrice());

                System.out.println(product.toString());

                int i = ps.executeUpdate();
                if (i == 1) {
                    status = true;
                    System.out.println("1 Record inserted");
                } else {
                    System.out.println("Failed to inserted recored");
                }

            } catch (SQLException e) {
                System.out.println(e);
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

        return status;
    }

    public static Product selectById(int id) {

        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;

        Product product = null;

        if (con != null) {
            String sql = "select * from product_tbl where id=?";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    product = new Product(rs.getInt("id"),
                            rs.getString("name"),
                            rs.getString("brand"),
                            rs.getString("category"),
                            rs.getString("type"),
                            rs.getString("image"),
                            rs.getString("description"),
                            rs.getDate("delivered_on"),
                            rs.getInt("quantity"),
                            rs.getDouble("price")
                    );

                }

            } catch (SQLException e) {
                System.out.println(e);
            }

        }
        return product;
    }

    public static ArrayList<Product> getAllProduct() {
        ArrayList<Product> al = new ArrayList<>();

        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "SELECT id, name, type, category, brand, quantity, price, image FROM product_tbl";
            try {
                ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Product p = new Product();
                    p.setId(rs.getInt(1));
                    p.setName(rs.getString(2));
                    p.setType(rs.getString(3));
                    p.setCategory(rs.getString(4));
                    p.setBrand(rs.getString(5));
                    p.setQuantity(rs.getInt(6));
                    p.setPrice(rs.getDouble(7));
                    p.setImage(rs.getString(8));

                    al.add(p);

                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return al;
    }

    public static boolean update(Product product) {
        boolean status = false;
        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "update product_tbl set name=?,type=?, category=?, brand=?,"
                    + " quantity=?, price=?, image=?, description=?, delivered_on=? "
                    + "where id=? ";
            try {
                ps = con.prepareStatement(sql);
                ps.setString(1, product.getName());
                ps.setString(2, product.getType());
                ps.setString(3, product.getCategory());
                ps.setString(4, product.getBrand());
                ps.setInt(5, product.getQuantity());
                ps.setDouble(6, product.getPrice());
                ps.setString(7, product.getImage());
                ps.setString(8, product.getDescription());
                ps.setDate(9, product.getDeliveredOn());
                ps.setInt(10, product.getId());

                System.out.println(product.toString());

                int i = ps.executeUpdate();
                if (i == 1) {
                    status = true;
                    System.out.println("Record update");
                }
            } catch (SQLException e) {
                System.out.println(e);

            }

        }
        return status;
    }

    public static void delete(int id) {

        Connection con = DBConnection.connectDB();
        PreparedStatement ps;

        if (con != null) {
            String sql = "delete from product_tbl where id=?";
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

    public static void insertPurchased(Product purchased) {
        Connection con = DBConnection.connectDB();
        PreparedStatement ps = null;
        if (con != null) {
            String sql = "insert into purchased(name,brand,category,type"
                    + "delivered_on,quantity,price) values (?,?,?,?,?,?,?)";
            try {

                ps = con.prepareStatement(sql);
                ps.setString(1, purchased.getName());
                ps.setString(2, purchased.getBrand());
                ps.setString(3, purchased.getCategory());
                ps.setString(4, purchased.getType());
                ps.setDate(5, purchased.getDeliveredOn());
                ps.setInt(6, purchased.getQuantity());
                ps.setDouble(7, purchased.getPrice());

                System.out.println(purchased.toString());

                int i = ps.executeUpdate();
                if (i == 1) {

                    System.out.println("1 Record inserted to purchased table");
                } else {
                    System.out.println("Failed to inserted recored in purchased table");
                }

            } catch (SQLException e) {
                System.out.println(e);
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

    }

}
