/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.LoginDAO;
import com.model.UserLogin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response, String message)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>" + message + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uri = request.getRequestURI();
        String cp = request.getContextPath();
        if (uri.equalsIgnoreCase(cp + "/Login")) {
            request.getRequestDispatcher("/frontend/login.jsp").forward(request, response);
        }
        else if(uri.equalsIgnoreCase(cp+"/Logout")){
            HttpSession session =request.getSession(false);
            if(session!=null){
                session.invalidate();
                System.out.println("Session cleared");
            }
            response.sendRedirect(cp+"/Login?Logout");
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uri = request.getRequestURI();
        String cp = request.getContextPath();

        if (uri.equalsIgnoreCase(cp + "/Login")) {
            //validate username and password
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            UserLogin userlogin = new UserLogin(username, password);

            boolean status = false;
            status = LoginDAO.loginCheck(userlogin);
            if (!status) {
                request.setAttribute("msg", "Invalid username or password");
                System.out.println("status fail");

                request.getRequestDispatcher("/frontend/login.jsp").forward(request, response);

            } else {
                
                HttpSession session = request.getSession();
                session.setAttribute("user", username);
                System.out.println("status true");
                request.getRequestDispatcher("/admin/adminhome.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect(cp + "/Login?failure");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
