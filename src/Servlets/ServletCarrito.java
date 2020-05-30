package Servlets;

import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/*Añade al carrito un nuevo producto
* Redirige al tablero*/

@WebServlet(name = "ServletCarrito", urlPatterns = "/carrito")
@MultipartConfig(
        fileSizeThreshold=1024 * 1024,
        maxFileSize=1024 * 1024 * 5,
        maxRequestSize=1024 * 1024 * 5 * 5
)
public class ServletCarrito extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int descuento = 0;
        if(request.getParameter("descuento") != "")
            descuento = Integer.parseInt(request.getParameter("descuento"));
        Product product = new Product(request.getParameter("inputNombre"), request.getParameter("description"), request.getParameter("categoria"), Float.parseFloat(request.getParameter("precio")), descuento, 0);
        ArrayList<Product> productos = (ArrayList) request.getSession().getAttribute("productos");
        productos.add(product);
        request.getSession().setAttribute("productos", productos);

        request.getRequestDispatcher("/tablero.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
