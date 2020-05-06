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

@WebServlet(name = "estadisticas", urlPatterns = "/estadisticas")
public class ServletEstadisticas extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        ArrayList productos = ProductsDAO.getProducts(brandId);
        request.getSession().setAttribute("listaProductos", productos);
        if(request.getParameter("est").equals("globales"))
            request.getRequestDispatcher("/EstadGlobales.jsp").forward(request, response);
        else if (request.getParameter("est").equals("categorias"))
            request.getRequestDispatcher("/EstadCateg.jsp").forward(request, response);
        else if (request.getParameter("est").equals("producto"))
            request.getRequestDispatcher("/EstadProducto.jsp").forward(request, response);
        else if (request.getParameter("est").equals("cliente"))
            request.getRequestDispatcher("/PerfilCliente.jsp").forward(request, response);
        else
            request.getRequestDispatcher("/error.jsp").forward(request, response);

    }
}
