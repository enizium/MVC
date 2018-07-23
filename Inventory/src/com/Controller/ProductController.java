package com.Controller;

import com.model.Product;
import com.model.Stock;
import com.DAO.ProductDAO;
import com.DAO.StockDAO;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.jsp.PageContext;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, //2MB
        maxFileSize = 1024 * 1024 * 10, //4MB0
        maxRequestSize = 1024 * 1024 * 50) //50MB

public class ProductController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("action").equalsIgnoreCase("add")) {
            request.getRequestDispatcher("/admin/addproduct.jsp").forward(request, response);
        } 
        else if (request.getParameter("action").equalsIgnoreCase("edit")) {

            int id = Integer.parseInt(request.getParameter("id"));
            Product product = ProductDAO.selectById(id);
            request.setAttribute("productlist1", product);
            
            
            String update = "Updated Successful !!";
            request.setAttribute("updated", update);

            request.getRequestDispatcher("/admin/editproduct.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("display")) {

            ArrayList<Product> al = ProductDAO.getAllProduct();
            request.setAttribute("productlist", al);

            request.getRequestDispatcher("/admin/displayproduct.jsp").forward(request, response);

        } else if (request.getParameter("action").equalsIgnoreCase("delete")) {

            int id = Integer.parseInt(request.getParameter("id"));
            ProductDAO.delete(id);

            ArrayList<Product> al = ProductDAO.getAllProduct();
            request.setAttribute("productlist", al);

            String deleted = "Deleted Successful !!";
            request.setAttribute("deleted", deleted);

            request.getRequestDispatcher("/admin/displayproduct.jsp").forward(request, response);

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("action").equalsIgnoreCase("add")) {
            boolean uploaded = false;

            String name = request.getParameter("name");
            String brand = request.getParameter("brand");
            String type = request.getParameter("type");
            String category = request.getParameter("category");
            Date convDatee = null;
            String datee = request.getParameter("delivered");
            SimpleDateFormat sdd = new SimpleDateFormat("yyyy-mm-dd");
            try {
                convDatee = new Date(sdd.parse(datee).getTime());

            } catch (ParseException ex) {
                Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
            }
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            Double price = Double.parseDouble(request.getParameter("price"));
            Product purchased = new Product(name, brand, category, type, convDatee, quantity, price);
            Stock stock =new Stock(name, brand, quantity);
            
            String uploadDir = "C:\\Eclipse\\WorkSpace\\Inventory";
           // String uploadDir = request.getServletContext().getRealPath("/");
            System.out.println("uploadDir = " + uploadDir);
           
            File savePath = new File(uploadDir + File.separator + "photo");
            if (!savePath.exists()) {

                savePath.mkdir();
            }
            System.out.println("Folder created:" + savePath.exists());
            System.out.println("save path="+savePath.getAbsolutePath());

            Product product = new Product();
            String fileName = null;

            for (Part part : request.getParts()) {

                if (part.getName().equals("image")) {
                    fileName = extractFileName(part);
                    // generate ramdon filename DIY

                    fileName = new File(fileName).getName();
                    //image uploaded
//                    part.write(fileName);
                    part.write(savePath + File.separator + fileName);

                    uploaded = true;
                    product.setImage(fileName);
                } else if (part.getName().equals("name")) {
                    product.setName(request.getParameter("name"));
                } else if (part.getName().equals("brand")) {
                    product.setBrand(request.getParameter("brand"));
                } else if (part.getName().equals("type")) {
                    product.setType(Arrays.toString(request.getParameterValues("type")));

                } else if (part.getName().equals("category")) {
                    product.setCategory(request.getParameter("category"));
                } else if (part.getName().equals("description")) {
                    product.setDescription(request.getParameter("description"));
                } else if (part.getName().equals("delivered")) {
                    String date = request.getParameter("delivered");
                    SimpleDateFormat sd = new SimpleDateFormat("yyyy-mm-dd");

                    try {
                        Date convDate = new Date(sd.parse(date).getTime());
                        product.setDeliveredOn(convDate);
                    } catch (ParseException ex) {
                        Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else if (part.getName().equals("quantity")) {
                    product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
                } else if (part.getName().equals("price")) {
                    product.setPrice(Double.parseDouble(request.getParameter("price")));
                }
              

            }
            if (uploaded) {
                ProductDAO.insertProduct(product);
             //   ProductDAO.insertPurchased(purchased);
                StockDAO.insert(stock);
                
                response.sendRedirect(request.getContextPath() + "/Admin/Product?action=add");

            } else {
                request.setAttribute("msg", "image upload failed");
                request.getRequestDispatcher("/admin/addproduct.jsp").forward(request, response);

            }

        } 
        else if (request.getParameter("action").equalsIgnoreCase("update")) {
            boolean uploaded = false;

           // String uploadDir = request.getServletContext().getRealPath("/");
            String uploadDir = "C:\\Eclipse\\WorkSpace\\Inventory";
            System.out.println(uploadDir);
            File savePath = new File(uploadDir + File.separator + "photo");
            if (!savePath.exists()) {
                savePath.mkdir();
            }
            System.out.println("Folder created:" + savePath.exists());
            System.out.println(savePath.getAbsolutePath());

            Product product = new Product();
            String fileName = null;
            Random random = new Random();

            for (Part part : request.getParts()) {
                if (part.getName().equals("image")) {
                    fileName = extractFileName(part);
                    // generate ramdon filename DIY
                    float e = random.nextFloat();
                    fileName = new File(fileName).getName();
                    String original = request.getParameter("originalImage");
                    System.out.println("original image name:" + original);

                    if (!fileName.equals("") && (!fileName.equals(original))) {
                        part.write(savePath + File.separator + fileName);
                        File deleteFile = new File(savePath + File.separator + fileName);
                        if (deleteFile.exists()) {
                            System.out.println("File exit");
                        }
                    } else {
                        fileName = request.getParameter("originalImage");

                    }

                    uploaded = true;
                    product.setImage(fileName);

                } else if (part.getName().equals("name")) {
                    product.setName(request.getParameter("name"));
                } else if (part.getName().equals("brand")) {
                    product.setBrand(request.getParameter("brand"));
                } else if (part.getName().equals("type")) {
                    product.setType(Arrays.toString(request.getParameterValues("type")));

                } else if (part.getName().equals("category")) {
                    product.setCategory(request.getParameter("category"));
                } else if (part.getName().equals("description")) {
                    product.setDescription(request.getParameter("description"));
                } else if (part.getName().equals("delivered")) {
                    String date = request.getParameter("delivered");
                    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");

                    try {
                        Date convDate = new Date(sd.parse(date).getTime());

                        product.setDeliveredOn(convDate);
                    } catch (ParseException ex) {
                        Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else if (part.getName().equals("quantity")) {
                    product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
                } else if (part.getName().equals("price")) {
                    product.setPrice(Double.parseDouble(request.getParameter("price")));
                } else if (part.getName().equals("id")) {

                    product.setId(Integer.parseInt(request.getParameter("id")));
                }
            }
            if (uploaded) {
                ProductDAO.update(product);
                System.out.println("");
                response.sendRedirect(request.getContextPath() + "/Admin/Product?action=display");

            } else {
                request.setAttribute("msg", "image upload failed");
                request.getRequestDispatcher("/admin/displayproduct.jsp").forward(request, response);

            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
