package Servlets;

import DAO.DAOBrands;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServleRegistro")
public class ServletRegistro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Brand brand = new Brand(request.getParameter("inputEmail"),request.getParameter("inputUsername"), request.getParameter("inputPassword") );
        if(DAOBrands.addBrand(brand)){
            request.getSession().setAttribute("username", brand.getUsername());
            request.getRequestDispatcher("/checkout.jsp").forward(request, response);

        }
        else {
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
