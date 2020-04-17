package Servlets;

import DAO.DAOBrands;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletLogin")
public class ServletLogin extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Brand brand = new Brand(request.getParameter("inputEmail"), request.getParameter("inputEmail"), request.getParameter("inputPassword"));

        //Comprobamos que coincidan usuario y contraseña
         String username = DAOBrands.checkLogin(brand);
        if (username != null) {
            request.getSession().setAttribute("invalidLogin", false);
            request.getSession().setAttribute("username", username);
            request.getRequestDispatcher("/servletEditarPerfil").forward(request, response);

        } else {
            request.getSession().setAttribute("invalidLogin", true);
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
