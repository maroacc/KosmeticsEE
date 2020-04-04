package Servlets;

import DAO.DAOBrands;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// Hace un update de la marca que se creó en la página anterior para añadir el resto de campos de la marca
@WebServlet(name = "ServletCheckout")
public class ServletCheckout extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = (String) request.getSession().getAttribute("username");
        Brand brand = new Brand();
        brand.setUsername(username);

        //Información general:

        if(request.getParameter("inputNombreMarca")!=null)
            brand.setName(request.getParameter("inputNombreMarca"));

        if(request.getParameter("descripcionTextarea")!=null)
            brand.setDescription(request.getParameter("descripcionTextarea"));

        if(request.getParameter("inputLogo")!=null)
            brand.setLogo(request.getParameter("inputLogo"));

        if(request.getParameter("inputWebAddress")!=null)
            brand.setWebAddress(request.getParameter("inputWebAddress"));


        //Información de la empresa

        if(request.getParameter("inputNombreEmpresa")!=null)
            brand.getCompany().setName(request.getParameter("inputNombreEmpresa"));

        if(request.getParameter("inputCIF")!=null)
            brand.getCompany().setCIF(request.getParameter("inputCIF"));

        if(request.getParameter("inputDireccionEmpresa1")!=null && request.getParameter("inputDireccionEmpresa2")!=null)
            brand.getCompany().setFiscalAddress(request.getParameter("inputDireccionEmpresa1") + " " +request.getParameter("inputDireccionEmpresa2"));

        //Información de contacto

        if(request.getParameter("inputEmailContacto")!=null)
            brand.getContact().setEmail(request.getParameter("inputEmailContacto"));

        if(request.getParameter("inputNombreContacto")!=null && request.getParameter("inputApellidosContacto")!=null)
            brand.getContact().setName(request.getParameter("inputNombreContacto") + " " + request.getParameter("inputApellidosContacto"));

        if(request.getParameter("inputTelefono")!=null)
            brand.getContact().setTelephone(request.getParameter("inputTelefono"));

        if(request.getParameter("inputDireccionEmpresa2")!=null)
            brand.getContact().setAddress(request.getParameter("inputDireccionEmpresa2"));

        // Información de pago

        brand.getPayment().setPaymentType(request.getParameter("inputTipoPago"));
        brand.getPayment().setAutomaticPayment(true);

        DAOBrands.updateBrand(brand);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
