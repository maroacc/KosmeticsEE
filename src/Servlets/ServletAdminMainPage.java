package Servlets;

import DAO.BrandsDAO;
import DAO.InvoiceDAO;
import DAO.ProductsDAO;
import Dominio.Compra;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
/*Se llama al iniciar sesión como administrador
* Obtiene las últimas marcas y productos creados y las últimas compras
* Obtiene las compras hechas en cada fecha
* Redirige a la página principal de administrador*/

@WebServlet(name = "ServletAdminMainPage", urlPatterns = "/admin")
public class ServletAdminMainPage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("latestBrands", BrandsDAO.getLatestBrands());
        request.getSession().setAttribute("latestProducts", ProductsDAO.getLatestProducts());
        request.getSession().setAttribute("latestInvoices", InvoiceDAO.getInvoices());
        System.out.println(InvoiceDAO.countInvoicesPerDay());
        request.getSession().setAttribute("countInvoicesPerDate", InvoiceDAO.countInvoicesPerDay());

        request.getRequestDispatcher("/admin-main-page.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
