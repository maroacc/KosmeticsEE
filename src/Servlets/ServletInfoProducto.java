package Servlets;

import DAO.ProductsDAO;
import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletInfoProducto", urlPatterns = "/ServletInfoProducto")
public class ServletInfoProducto extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = ProductsDAO.getProduct(request.getParameter("producto"));
        request.setAttribute("producto", product);
        request.getRequestDispatcher("/info-producto").forward(request, response);


    }
}
