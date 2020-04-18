package Servlets;

import DAO.BrandsDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ServletAdminMainPage", urlPatterns = "/ServletAdminMainPage")
public class ServletAdminMainPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList brands = BrandsDAO.getLatestBrands();
        request.getSession().setAttribute("latestBrands", BrandsDAO.getLatestBrands());
        request.getRequestDispatcher("/admin-main-page.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
