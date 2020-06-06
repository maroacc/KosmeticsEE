package Servlets;

import DAO.AdminDAO;
import DAO.BrandsDAO;
import DAO.FeaturesDAO;
import DAO.ProductsDAO;
import Dominio.Admin;
import Dominio.Brand;
import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Brand brand = new Brand(request.getParameter("inputEmail"), request.getParameter("inputEmail"), request.getParameter("inputPassword"));
        Admin admin = new Admin(request.getParameter("inputEmail"), request.getParameter("inputEmail"), request.getParameter("inputPassword"));

        //Comprobamos que coincidan usuario y contraseña
        String username = BrandsDAO.checkLogin(brand); //Comprobamos que sea una marca


        if (username != null) { // Login como marca (no administrador)
            request.getSession().setAttribute("invalidLogin", false);
            request.getSession().setAttribute("username", username);

            // Recogemos todos los productos de la marca
            int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
            ArrayList productos = ProductsDAO.getProducts(brandId);
            request.getSession().setAttribute("listaProductos", productos);
            request.getSession().setAttribute("features", FeaturesDAO.getAllFeatures());
            request.getRequestDispatcher("/tablero.jsp").forward(request, response);

        } else if (AdminDAO.checkLogin(admin) != null){
            request.getRequestDispatcher("/admin").forward(request, response);
        }
        else {
            request.getSession().setAttribute("invalidLogin", true);
            request.getRequestDispatcher("/iniciar-sesion.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
