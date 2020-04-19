package Servlets;

import DAO.AdminDAO;
import DAO.BrandsDAO;
import Dominio.Admin;
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
        Admin admin = new Admin(request.getParameter("inputEmail"), request.getParameter("inputEmail"), request.getParameter("inputPassword"));

        //Comprobamos que coincidan usuario y contraseña
        String username = BrandsDAO.checkLogin(brand); //Comprobamos que sea una marca

        if (username != null) {
            request.getSession().setAttribute("invalidLogin", false);
            request.getSession().setAttribute("username", username);
            request.getRequestDispatcher("/mainPage.jsp").forward(request, response);

        } else if (AdminDAO.checkLogin(admin) != null){
            request.getRequestDispatcher("/ServletAdminMainPage").forward(request, response);
        }
        else {
            request.getSession().setAttribute("invalidLogin", true);
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
