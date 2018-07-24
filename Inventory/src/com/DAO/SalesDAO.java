package com.DAO;

import java.sql.*;

import com.model.Sales;

public class SalesDAO {

	public static void insert(Sales sales) {
		
		Connection  con=DBConnection.connectDB();
		PreparedStatement ps=null;
		
		if(con!=null) {
			String sql="select * from stock where name=?, brand=?";
			
		}
		
	}



}
