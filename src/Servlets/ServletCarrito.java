package Servlets;

import DAO.ProductsDAO;
import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "ServletCarrito")
public class ServletCarrito extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int descuento = 0;
        if(request.getParameter("descuento") != "")
            descuento = Integer.parseInt(request.getParameter("descuento"));
        Product product = new Product(request.getParameter("inputNombre"), request.getParameter("description"), request.getParameter("categoria"), Float.parseFloat(request.getParameter("precio")), descuento, 0);
        ArrayList<Product> productos = (ArrayList) request.getSession().getAttribute("productos");
        productos.add(product);
        request.getSession().setAttribute("productos", productos);

        request.getRequestDispatcher("/mainPage.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
