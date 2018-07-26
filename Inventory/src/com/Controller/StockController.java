package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.StockDAO;
import com.model.Product;
import com.model.Stock;

/**
 * Servlet implementation class Stock
 */

public class StockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StockController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, String message)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error</title>");
            out.println("</head>");
            out.println("<body>");
            out.println(message);
            out.println("</body>");
            out.println("</html>");
        }
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if (request.getParameter("action").equalsIgnoreCase("fstock")) {
			ArrayList<Stock> al=StockDAO.getAllStock();
			request.setAttribute("stock", al);
            request.getRequestDispatcher("/frontend/stock.jsp").forward(request, response);
        }
		else if (request.getParameter("action").equalsIgnoreCase("stock")) {
			ArrayList<Stock> al=StockDAO.getAllStock();
			request.setAttribute("stock", al);
            request.getRequestDispatcher("/admin/stock.jsp").forward(request, response);
        }
		else if(request.getParameter("action").equalsIgnoreCase("edit")){
			int id=Integer.parseInt(request.getParameter("id"));
			Stock stock=StockDAO.selectById(id);
			request.setAttribute("stock", stock);
			String update = "Updated Successful stock!!";
			System.out.println(update);
            request.getRequestDispatcher("/admin/editstock.jsp").forward(request, response);
			
		}
		else if(request.getParameter("action").equalsIgnoreCase("update")) {
			int id=Integer.parseInt(request.getParameter("id"));
			StockDAO.delete(id);
			ArrayList<Stock> al=StockDAO.getAllStock();
			request.setAttribute("stock", al);
			String deleted = "Deleted Successful !!";
            request.setAttribute("deleted", deleted);
            request.getRequestDispatcher("/admin/stock.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("action").equalsIgnoreCase("update")) {
			int id=Integer.parseInt(request.getParameter("id"));
			String name=request.getParameter("name");
			String brand =request.getParameter("brand");
			int quantity= Integer.parseInt(request.getParameter("quantity"));

			Stock stock =new Stock (id, name, brand, quantity);
			
			boolean status =false;
			status=StockDAO.update(stock);
			if(!status) {
				processRequest(request, response, "unable to update");
			}

            response.sendRedirect(request.getContextPath() + "/Admin?action=stock");
		}
	}

}
