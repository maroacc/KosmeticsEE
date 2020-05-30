package Servlets;

import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

@WebServlet(name = "ServletEliminaCarrito", urlPatterns = "/elimina-carrito")
public class ServletEliminaCarrito extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean eliminado = false;
        ArrayList<Product> productos = (ArrayList) request.getSession().getAttribute("productos");
        String name = request.getParameter("name");
        Iterator<Product> it = productos.iterator();
        while(it.hasNext()) {
            Product product = (Product) it.next();
            if(product.getName().equals(name))
            {
                productos.remove(product);
                eliminado = true;
                break;
            }
        }
        if(eliminado)
            request.getSession().setAttribute("productos", productos);
        request.getRequestDispatcher("/cargarProductos.jsp").forward(request, response);
    }
}
