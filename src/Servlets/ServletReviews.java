package Servlets;

import DAO.BrandsDAO;
import DAO.ProductsDAO;
import DAO.ReviewDAO;
import DAO.UserDAO;
import Dominio.Brand;
import Dominio.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletReviews", urlPatterns = "/opiniones-todas")
public class ServletReviews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = (String) request.getSession().getAttribute("username");
        Brand brand = BrandsDAO.getBrand(username);
        if (brand != null){
/*
            request.getSession().setAttribute("reviews", ReviewDAO.getAllUserReviews(new User("Alejandro Rodriguez", "alex.rgg10@gmail.com", "p5j9C4iBFnpvESG")));
            System.out.println("reviews" + ReviewDAO.getAllUserReviews(new User("Alejandro Rodriguez", "alex.rgg10@gmail.com", "p5j9C4iBFnpvESG")));
*/
            request.getSession().setAttribute("reviews", ReviewDAO.getAllReviewsBrand(brand));
            request.getRequestDispatcher("/opiniones.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }

    }
}
