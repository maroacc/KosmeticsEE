package Servlets;

import DAO.BrandsDAO;
import DAO.ProductsDAO;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletPerfil", urlPatterns = "/ServletPerfil")
public class ServletPerfil extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        ArrayList productos = ProductsDAO.getLatestProducts(brandId);
        request.getSession().setAttribute("latestBrandProducts", productos);

        Brand brand = BrandsDAO.getBrand(username);
        if (brand != null){
            request.getSession().setAttribute("brand", brand);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }
    }
}
