package Servlets;

import DAO.BrandsDAO;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletValidarMarca" , urlPatterns = "/ServletValidarMarca")
public class ServletValidarMarca extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Brand brand = BrandsDAO.getBrand((String) request.getParameter("username"));
        request.getSession().setAttribute("brand", brand);
        System.out.println(brand);
        request.getRequestDispatcher("/admin-validar-brand.jsp").forward(request, response);

    }

}
