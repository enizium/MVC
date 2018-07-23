/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.ProductDAO;
import com.DAO.RelationDAO;
import com.DAO.SupplierDAO;
import com.model.Product;
import com.model.ProductSupplier;
import com.model.Supplier;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RelationController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RelationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RelationController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("action").equalsIgnoreCase("add")) {
            ArrayList<Product> alp = ProductDAO.getAllProduct();
            ArrayList<Supplier> als = SupplierDAO.getAllSuppliers();
            request.setAttribute("productdata", alp);
            request.setAttribute("supplierdata", als);
            request.getRequestDispatcher("/admin/addrelation.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("display")) {
            request.setAttribute("productsupplierdata", RelationDAO.getAllRelated());
            request.getRequestDispatcher("/admin/displayrelation.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("Id =" + id);
            ArrayList<Product> alp = ProductDAO.getAllProduct();
            ArrayList<Supplier> als = SupplierDAO.getAllSuppliers();
            ProductSupplier productsupplier = RelationDAO.selectById(id);
            request.setAttribute("productdata", alp);
            request.setAttribute("supplierdata", als);
    
            request.setAttribute("productsupplier", productsupplier);
            request.getRequestDispatcher("/admin/editrelation.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("action").equalsIgnoreCase("add")) {
            int pid = Integer.parseInt(request.getParameter("product"));
            int sid = Integer.parseInt(request.getParameter("supplier"));

            RelationDAO.addRelation(pid, sid);
            response.sendRedirect(request.getContextPath() + "/Admin/Relation?action=display");

        } else if (request.getParameter("action").equalsIgnoreCase("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int pid = Integer.parseInt(request.getParameter("product"));
            int sid = Integer.parseInt(request.getParameter("supplier"));
//            int pid = Integer.parseInt(request.getParameter("pid"));
//            int sid = Integer.parseInt(request.getParameter("sid"));

            ProductSupplier prosup = new ProductSupplier(id, pid, sid);

            boolean status = false;
            status = RelationDAO.update(prosup);
//            if (!status) {
//                processRequest(request, response, "unable to update");
//            }

            response.sendRedirect(request.getContextPath() + "/Admin/Relation?action=displayrelation");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
