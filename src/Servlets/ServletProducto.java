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
        new Product(request.getParameter("inputNombre"), request.getParameter("validationTextarea"), request.getParameter("exampleCategoria"), Float.parseFloat(request.getParameter("inputPrecio")), Integer.parseInt(request.getParameter("inputDescuento")));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
