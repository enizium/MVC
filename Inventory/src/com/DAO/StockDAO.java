package com.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.model.Product;
import com.model.Stock;

public class StockDAO {

	public static void insert(Stock stock) {
		boolean status = false;
		Connection con = DBConnection.connectDB();
		PreparedStatement ps = null;
		int oldquantity = 0;
		int id = 0;
		int newquantity = stock.getQuantity();
		
		System.out.println("New Quantity=" + newquantity);

		if (con != null) {

			String sql = "select * from stock where (?,?)";
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, stock.getName());
				ps.setString(2, stock.getBrand());
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					oldquantity = rs.getInt("quantity");
					id = rs.getInt("id");
					System.out.println("Printing from inside" + id + oldquantity);
					status = true;
				}
				if (status) {
					String sql1 = "update stock set quantity where id=?";
					PreparedStatement ps1=null;
					ps1 = con.prepareStatement(sql1);
					int updatequantity = oldquantity + newquantity;
					ps1.setInt(1, updatequantity);
					ps1.setInt(2, id);
					int i = ps1.executeUpdate();
					if (i == 1) {

						System.out.println("Record update in stock table");
					}
					else {
						System.out.println("Fail to update stock table");
					}
				}
				else if(!status) {
					String sql2 = "insert into stock(name, brand, quantity) values(?,?,?)";
					try {
						PreparedStatement ps2=null;
						ps2 = con.prepareStatement(sql2);
						ps2.setString(1,stock.getName());
						ps2.setString(2, stock.getBrand());
						ps2.setInt(3, stock.getQuantity());
						int i = ps2.executeUpdate();
						if (i == 1) {

							System.out.println("1 Record inserted to stock table");
						} else {
							System.out.println("Failed to insert recored in stock table");
						}

					} catch (SQLException e) {
						System.out.println(e);
					}

				}
			} catch (SQLException e) {
				System.out.println(e);
			}

		}

	}

	public static ArrayList<Stock> getAllStock() {
		ArrayList<Stock> al = new ArrayList<>();

		Connection con = DBConnection.connectDB();
		PreparedStatement ps = null;
		if (con != null) {
			String sql = "select * from stock";
			try {
				ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Stock p = new Stock();
					p.setId(rs.getInt(1));
					p.setName(rs.getString(2));
					p.setBrand(rs.getString(3));
					p.setQuantity(rs.getInt(4));

					al.add(p);
				}
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
		return al;
	}

	public static Stock selectById(int id) {

		Stock stock = null;
		Connection con = DBConnection.connectDB();
		PreparedStatement ps = null;
		if (con != null) {
			String sql = "select * from stock where id=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					stock = new Stock(rs.getInt("id"), rs.getString("name"), rs.getString("brand"),
							rs.getInt("quantity"));

				}
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
		return stock;
	}

	public static void delete(int id) {
		// TODO Auto-generated method stub

	}

	public static boolean update(Stock stock) {
		// TODO Auto-generated method stub
		return false;
	}

}
