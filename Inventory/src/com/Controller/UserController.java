package com.Controller;

import com.DAO.SignupDAO;
import com.itn.dto.UserDTO;
import com.model.UserInfo;
import com.model.UserLogin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("action").equalsIgnoreCase("login")) {
            request.getRequestDispatcher("/frontend/login.jsp").forward(request, response);
        } else if (request.getParameter("action").equalsIgnoreCase("signup")) {
            request.getRequestDispatcher("/frontend/signup.jsp").forward(request, response);
        } else if (request.getParameter("action").equalsIgnoreCase("edit")) {

            request.getRequestDispatcher("/admin/edituser.jsp").forward(request, response);
        } else if (request.getParameter("action").equalsIgnoreCase("alluser")) {
            ArrayList<UserDTO> allusers = SignupDAO.getAllUser_info();
            request.setAttribute("alluser", allusers);
            request.getRequestDispatcher("/admin/displayuser.jsp").forward(request, response);
        }
         else if (request.getParameter("action").equalsIgnoreCase("update")) {
            int id = Integer.parseInt(request.getParameter("id"));
            UserDTO user = SignupDAO.selectById(id);
            request.setAttribute("userlist", user);
            System.out.println("update successful");
            request.getRequestDispatcher("/admin/editsupplier.jsp").forward(request, response);
           
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("action").equalsIgnoreCase("signup")) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("cpassword");
            String gender = request.getParameter("gender");
            long phone = Long.parseLong(request.getParameter("phone"));
            String role = request.getParameter("role");

            if (password.equalsIgnoreCase(cpassword)) {

                UserInfo userinfo = new UserInfo(name, email, gender, phone, role);
                UserLogin userlogin = new UserLogin(username, password, email);

                SignupDAO.insertUserInfo(userinfo);
                SignupDAO.insertUserLogin(userlogin);
                request.getRequestDispatcher("/frontend/login.jsp").forward(request, response);

            }
        } else if (request.getParameter("action").equalsIgnoreCase("display")) {
            ArrayList<UserDTO> alluser = SignupDAO.getAllUser_info();

            request.setAttribute("all_user", alluser);

            request.getRequestDispatcher("/admin/display.jsp").forward(request, response);

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
