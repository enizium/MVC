package com.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.Controller.sales;
import com.model.Sales;

public class SalesDAO {

	public static int insert(Sales sales) {

		Connection con = DBConnection.connectDB();
		PreparedStatement ps = null;
		int quantityinstock = 0;
		int requestquantity = sales.getQunatity();
		boolean status = false;

		if (con != null) {
			String sql = "select * from stock where name=?, brand=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, sales.getName());
				ps.setString(2, sales.getBrand());

				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					quantityinstock = rs.getInt("quantity");
					status = true;

				}
				if (status) {
					if (requestquantity > quantityinstock) {
						PreparedStatement ps2 = null;
						String sql2 = "insert into sales(name, brand, type, category, date, price, totalprice)"
								+ " values(?,?,?,?,?,?,?)";
						try {
							ps2 = con.prepareStatement(sql2);
							ps2.setString(1, sales.getName());
							ps2.setString(2, sales.getBrand());
							ps2.setString(3, sales.getType());
							ps2.setString(4, sales.getCategory());
							ps2.setDate(5, sales.getDate());
							ps2.setInt(6, sales.getQunatity());
							ps2.setDouble(7, sales.getPrice());
							ps2.setDouble(8, sales.getTotalprice());

							int i = ps.executeUpdate();
							if (i == 1) {
								System.out.println("recored inserted into sales");
							} else {
								System.out.println("fail to insert into sales");
							}

						} catch (SQLException e) {
							System.out.println(e);
						}

					} else {
						return quantityinstock;
					}
				} else {
					System.out.println("cant find product");
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
		return requestquantity;

	}

	public static ArrayList<Sales> getAllSales() {
		ArrayList<Sales> al = new ArrayList<>();
		Connection con = DBConnection.connectDB();
		PreparedStatement ps = null;

		if (con != null) {
			String sql = "select * from sales";
			ResultSet rs;
			try {
				rs = ps.executeQuery();
				while (rs.next()) {
					Sales sales = new Sales();
					sales.setId(rs.getInt(1));
					sales.setName(rs.getString(2));
					sales.setBrand(rs.getString(3));
					sales.setType(rs.getString(4));
					sales.setCategory(rs.getString(5));
					sales.setDate(rs.getDate(6));
					sales.setQunatity(rs.getInt(7));
					sales.setPrice(rs.getDouble(8));
					sales.setTotalprice(rs.getDouble(9));
					al.add(sales);
					
				}
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}

		}

		return al;
	}
}
