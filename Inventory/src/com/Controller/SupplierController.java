/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.SupplierDAO;
import com.model.Supplier;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SupplierController extends HttpServlet {

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("action").equalsIgnoreCase("add")) {
            request.getRequestDispatcher("/admin/addsupplier.jsp").forward(request, response);
        }
        else if (request.getParameter("action").equalsIgnoreCase("display")) {

            ArrayList<Supplier> al = SupplierDAO.getAllSuppliers();
            request.setAttribute("supplierList", al);

            request.getRequestDispatcher("/admin/display.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("edit")) {

            int id = Integer.parseInt(request.getParameter("id"));
            Supplier supplier = SupplierDAO.selectById(id);
            request.setAttribute("supplierlist", supplier);

            String update = "Updated Successful !!";
            request.setAttribute("updated", update);
            request.getRequestDispatcher("/admin/editsupplier.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("delete")) {

            int id = Integer.parseInt(request.getParameter("id"));
            SupplierDAO.delete(id);

            ArrayList<Supplier> al = SupplierDAO.getAllSuppliers();
            request.setAttribute("supplierList", al);

            String deleted = "Deleted Successful !!";
            request.setAttribute("deleted", deleted);

            request.getRequestDispatcher("/admin/display.jsp").forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("action").equalsIgnoreCase("add")) {
            // request.getRequestDispatcher("/admin/addsuppiler.jsp").forward(request, response);

            //1. collect from data and place it into supplier object
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String country = request.getParameter("country");
            String city = request.getParameter("city");
            String street = request.getParameter("street");

            String postalCode = request.getParameter("postalCode");
            int pc = 0;
            //checking null value of postal code

            try {
                if (postalCode != null) {
                    pc = Integer.parseInt(postalCode);
                }
            } catch (NumberFormatException e) {
                pc = 0;
            }

            long phoneNo = Long.parseLong(request.getParameter("phone"));

            String bankname = request.getParameter("acc_bank");
            String bank_name = null;
            if (bankname != null) {
                bank_name = bankname;
            }
            String acc_no = request.getParameter("acc_no");
            long account_no = 0;
            //checking null value of account no
//            if (acc_no != null) {
//                account_no = Long.parseLong(acc_no);
//            }

            try {
                if (acc_no != null) {
                    account_no = Long.parseLong(acc_no);
                }
            } catch (NumberFormatException e) {
                account_no = 0;
            }

            Supplier sup = new Supplier(name, country, city, street, pc, phoneNo, email, account_no, bank_name);

            //2. call suppilerdao to save suppiler object int database
            boolean status = false;
            status = SupplierDAO.insert(sup);
            if (!status) {
                processRequest(request, response, "Insert Operation Failed!!!");
            }
            response.sendRedirect(request.getContextPath() + "/Admin/Supplier?action=add");

        } 
        else if (request.getParameter("action").equalsIgnoreCase("update")) {

            //1. collect from data and place it into supplier object
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String country = request.getParameter("country");
            String city = request.getParameter("city");
            String street = request.getParameter("street");

            String postalCode = request.getParameter("postalCode");
            int pc = 0;
            //checking null value of postal code
            if (postalCode != null) {
                pc = Integer.parseInt(postalCode);
            }

            long phoneNo = Long.parseLong(request.getParameter("phone"));

            String bankname = request.getParameter("acc_bank");
            String bank_name = null;
            if (bankname != null) {
                bank_name = bankname;
            }
            String acc_no = request.getParameter("acc_no");
            long account_no = 0;
            //checking null value of account no
            if (acc_no != null) {
                account_no = Long.parseLong(acc_no);
            }

            Supplier sup = new Supplier(id, name, country, city, street, pc, phoneNo, email, account_no, bank_name);

            boolean status = false;
            status = SupplierDAO.update(sup);
            if (!status) {
                processRequest(request, response, "unable to update");
            }
            response.sendRedirect(request.getContextPath() + "/Admin/Supplier?action=display");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
