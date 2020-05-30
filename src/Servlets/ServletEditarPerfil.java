package Servlets;

import DAO.BrandsDAO;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletEditarPerfil", urlPatterns = "/editar-perfil")
public class ServletEditarPerfil extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        Brand brand = BrandsDAO.getBrand(username);
        if (brand != null){
            request.getSession().setAttribute("brand", brand);
            request.getRequestDispatcher("/editar-perfil.jsp").forward(request, response);
        }
    }
}
