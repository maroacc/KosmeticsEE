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
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

@WebServlet(name = "ServletActualizarProducto", urlPatterns = "/actualizar-producto")
@MultipartConfig(
        fileSizeThreshold=1024 * 1024,
        maxFileSize=1024 * 1024 * 5,
        maxRequestSize=1024 * 1024 * 5 * 5
)
public class ServletActualizarProducto extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("inputNombre: " + request.getParameter("inputNombre"));
        System.out.println("precio: " + request.getParameter("precio"));
        System.out.println("features: " + request.getParameterValues("features"));

        int productId = ProductsDAO.getProductID(request.getParameter("inputNombre"));
        Collection<Part> files = request.getParts();
        //int id = this.getIdCookie(request);
        //int id = ProductsDAO.getProductID(request.getParameter("inputNombre"));
        System.out.println(files.size());

        for (Part f : files) {
            System.out.println(f.getSubmittedFileName());

            InputStream imagen = f.getInputStream();

            System.out.println(f.getSize() + " B");

            if (f.getSize() > 10) {
                System.out.println("Se ha leído la imagen");
                int i = ProductsDAO.checkImg(productId);
                ProductsDAO.uploadImg(productId,imagen,i);
            }
        }
        String[] idFeatures = request.getParameterValues("features");
        ArrayList<String> features = new ArrayList<String>();

        HashMap<Integer,String> featuresHM = (HashMap<Integer, String>) request.getSession().getAttribute("features");

        for (String feature: idFeatures) {
            features.add(featuresHM.get(Integer.parseInt(feature)));
            //System.out.println("feature: "+feature);
        }

        ProductsDAO.setFeatures(productId,idFeatures);
        int descuento = 0;
        if(request.getParameter("inputDescuento") != null)
            descuento = Integer.parseInt(request.getParameter("inputDescuento"));
        Product product = new Product(request.getParameter("inputNombre"), request.getParameter("description"), request.getParameter("categoria"), Float.parseFloat(request.getParameter("precio")), descuento, false);

        ProductsDAO.uploadColors(productId, request.getParameter("inputColor"));

        int brandId = BrandsDAO.getBrandId((String) request.getSession().getAttribute("username"));
        if(brandId != 0) {
            if(!ProductsDAO.updateProduct(product))
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            request.getRequestDispatcher("/tablero.jsp").forward(request, response);
        } else
            request.getRequestDispatcher("/error.jsp").forward(request, response);
    }

    private int getIdCookie(HttpServletRequest request) {
        Cookie id = null;
        Cookie[] cookies = request.getCookies();
        if(cookies!=null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("id")) {
                    id = cookies[i];
                }
            }
        }
        return Integer.parseInt(id.getValue());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
