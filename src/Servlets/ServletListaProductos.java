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

@WebServlet(name = "ServletListaProductos", urlPatterns = "/ServletListaProductos")
public class ServletListaProductos extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        ArrayList productos = ProductsDAO.getProducts(brandId);
        request.getSession().setAttribute("listaProductos", productos);
        request.getRequestDispatcher("/lista-productos.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        ArrayList productos = ProductsDAO.getProducts(brandId);
        request.getSession().setAttribute("listaProductos", productos);
        //Falta añadir que si no hay productos, te ponga un mensaje :)
        System.out.println("productos: " + productos);
        System.out.println("session: " + request.getSession().getAttribute("listaProductos"));
        System.out.println("session: " + request.getSession().getAttribute("username"));
        request.getRequestDispatcher("/lista-productos.jsp").forward(request, response);

    }
}
