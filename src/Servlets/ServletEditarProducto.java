package Servlets;

import DAO.BrandsDAO;
import DAO.ProductsDAO;
import Dominio.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.stream.Collectors;

@WebServlet(name = "ServletEditarProducto", urlPatterns = "/ServletEditarProducto")
@MultipartConfig(
        fileSizeThreshold=1024 * 1024,
        maxFileSize=1024 * 1024 * 5,
        maxRequestSize=1024 * 1024 * 5 * 5
)
public class ServletEditarProducto extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("inputNombre: " + request.getParameter("inputNombre"));
        System.out.println("precio: " + request.getParameter("precio"));
        System.out.println("features: " + request.getParameterValues("features"));

        String[] idFeatures = request.getParameterValues("features");
        ArrayList<String> features = new ArrayList<String>();

        HashMap<Integer,String> featuresHM = (HashMap<Integer, String>) request.getSession().getAttribute("features");

        for (String feature: idFeatures) {
            features.add(featuresHM.get(Integer.parseInt(feature)));
            //System.out.println("feature: "+feature);
        }

        int productId = ProductsDAO.getProductID(request.getParameter("inputNombre"));
        ProductsDAO.setFeatures(productId,idFeatures);
        int descuento = 0;
        if(request.getParameter("inputDescuento") != null)
            descuento = Integer.parseInt(request.getParameter("inputDescuento"));
        Product product = new Product(request.getParameter("inputNombre"), request.getParameter("description"), request.getParameter("categoria"), Float.parseFloat(request.getParameter("precio")), descuento, 0);

        ProductsDAO.uploadColors(productId, request.getParameter("inputColor"));
        int brandId = BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        if(brandId != 0) {
            if(!ProductsDAO.updateProduct(product))
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            request.getRequestDispatcher("/mainPage.jsp").forward(request, response);
        } else
            request.getRequestDispatcher("/error.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
