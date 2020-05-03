package Servlets;

import Dominio.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletProducto", urlPatterns = "/ServletProducto")
public class ServletProducto extends HttpServlet {
    public ServletProducto() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> productos = (ArrayList) request.getSession().getAttribute("productos");
        int brandId = DAO.BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        if(brandId != 0) {
            Iterator<Product> it = productos.iterator();
            while(it.hasNext()){
                Product product = (Product) it.next();
                if(!DAO.ProductsDAO.addProduct(product, brandId))
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
            }
            productos.clear();
            request.getSession().setAttribute("productos", productos);
            request.getRequestDispatcher("/mainPage.jsp").forward(request, response);
        } else
            request.getRequestDispatcher("/error.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
