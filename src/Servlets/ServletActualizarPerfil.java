package Servlets;

import DAO.BrandsDAO;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletActualizarPerfil")
public class ServletActualizarPerfil extends HttpServlet {
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
/*
        if(request.getParameter("inputDireccionEmpresa1")!=null && request.getParameter("inputDireccionEmpresa2")!=null
                && request.getParameter("inputMunicipio")!=null && request.getParameter("inputProvincia")!=null && request.getParameter("inputCodigoPostal")!=null){
            brand.getCompany().setFiscalAddress(request.getParameter("inputDireccionEmpresa1") + " " +request.getParameter("inputDireccionEmpresa2")
                    + ", " + request.getParameter("inputMunicipio") + ", " + request.getParameter("inputProvincia") + ", " + request.getParameter("inputCodigoPostal"));
        }*/

        //Información de contacto

        if(request.getParameter("inputEmailContacto")!=null)
            brand.getContact().setEmail(request.getParameter("inputEmailContacto"));

        if(request.getParameter("inputNombreContacto")!=null)
            brand.getContact().setName(request.getParameter("inputNombreContacto"));

        if(request.getParameter("inputTelefono")!=null)
            brand.getContact().setTelephone(request.getParameter("inputTelefono"));

        /*if(request.getParameter("inputDireccionContacto1")!=null && request.getParameter("inputDireccionContacto2")!=null
                && request.getParameter("inputMunicipioContacto")!=null && request.getParameter("inputProvinciaContacto")!=null && request.getParameter("inputCodigoPostalContacto")!=null){
            brand.getContact().setAddress(request.getParameter("inputDireccionContacto1") + " " +request.getParameter("inputDireccionContacto2")
                    + ", " + request.getParameter("inputMunicipioContacto") + ", " + request.getParameter("inputProvinciaContacto") + ", "  + request.getParameter("inputCodigoPostalContacto"));
        }*/

        // Información de pago

        brand.getPayment().setPaymentType(request.getParameter("inputTipoPago"));
        brand.getPayment().setAutomaticPayment(true);


//Primero comprobamos que el usuario no esté repetido
        Brand brandAnt = (Brand) request.getSession().getAttribute("brand");
        if (!BrandsDAO.checkBrandNameUnique(brand) && !brand.getName().equals(brandAnt.getName())) {
            request.getSession().setAttribute("brandUnique", false);
            request.getRequestDispatcher("/editar-perfil.jsp").forward(request, response);

        } else {
            if (BrandsDAO.updateBrand(brand)) {
                request.getSession().setAttribute("brandUnique", true);
                request.getSession().setAttribute("username", brand.getUsername());
                request.getSession().setAttribute("brand", brand);
                request.getRequestDispatcher("/editar-perfil.jsp").forward(request, response);

            } else {
                request.getRequestDispatcher("/editar-perfil.jsp").forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
