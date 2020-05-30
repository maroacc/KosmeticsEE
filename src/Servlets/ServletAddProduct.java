package Servlets;

import DAO.FeaturesDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/*Se llama al pulsar añadir producto
* Añade la lista de features a la sesión
* Redirige a la página de añadir un nuevo producto*/

@WebServlet(name = "ServletAddProduct", urlPatterns = "/add-product")
public class ServletAddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("features", FeaturesDAO.getAllFeatures());
        request.getRequestDispatcher("addProduct.jsp").forward(request, response);
    }
}
