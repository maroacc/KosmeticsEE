package Servlets;

import Dominio.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "ServletProducto"
)
public class ServletProducto extends HttpServlet {
    public ServletProducto() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product product = new Product(request.getParameter("inputNombre"), request.getParameter("validationTextarea"), request.getParameter("exampleCategoria"), 12, 5, 0);
        if(DAO.DAOProducts.addProduct(product))
            request.getRequestDispatcher("/mainPage.jsp").forward(request, response);
        else
            request.getRequestDispatcher("/typesProducts.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
