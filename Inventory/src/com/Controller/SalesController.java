package com.Controller;

import com.DAO.DBConnection;
import com.DAO.ProductDAO;
import com.DAO.SalesDAO;
import com.model.Product;
import com.model.Sales;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SalesController extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			/* TODO output your page here. You may use following sample code. */
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet SalesController</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Servlet SalesController at " + request.getContextPath() + "</h1>");
			out.println("</body>");
			out.println("</html>");
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("action").equalsIgnoreCase("sale")) {

			request.getRequestDispatcher("/admin/sale.jsp").forward(request, response);
		}
		else if(request.getParameter("action").equalsIgnoreCase("salesstatement")) {
			 ArrayList<Sales> al = SalesDAO.getAllSales();
	            request.setAttribute("sales", al);

	            request.getRequestDispatcher("/admin/salesstatement.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("action").equalsIgnoreCase("sale")) {
			Connection con = DBConnection.connectDB();
			PreparedStatement p = null;
			if (con != null) {
				String name = request.getParameter("name");
				String brand = request.getParameter("brand");
				String category = request.getParameter("category");
				String type = request.getParameter("type");
				String date = request.getParameter("date");
				Date salesdate;
				int quantity = Integer.parseInt(request.getParameter("quantity"));
				SimpleDateFormat sd = new SimpleDateFormat("yyyy-mm-dd");
				Date convDate = null;
				try {
					convDate = new Date(sd.parse(date).getTime());
				} catch (ParseException ex) {
					Logger.getLogger(SalesController.class.getName()).log(Level.SEVERE, null, ex);
				}
				Double price = Double.parseDouble(request.getParameter("ppu"));
				Double totalprice = Double.parseDouble(request.getParameter("totalamount"));
				Sales sales = new Sales(name, brand, type, category, convDate, quantity, price, totalprice);
				int quantityinstock = SalesDAO.insert(sales);
				if(quantityinstock < quantity )
				{
				String msg="Quantity in stock is less than requested";
				request.setAttribute("msg", msg);
				}

				response.sendRedirect(request.getContextPath() + "/Admin/Sale?action=sale");

			}
		}
	
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}

}
