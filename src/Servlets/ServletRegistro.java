package Servlets;

import DAO.BrandsDAO;
import Dominio.Brand;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServleRegistro")
public class ServletRegistro extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Brand brand = new Brand(request.getParameter("inputEmail"), request.getParameter("inputUsername"), request.getParameter("inputPassword"));
        Boolean ok = true;

        //Primero comprobamos que la marca sea única
        if (!BrandsDAO.checkEmailUnique(brand)) { // Email repetido
            request.getSession().setAttribute("emailUnique", false);
            ok = false;
        }
        if (!BrandsDAO.checkUsernameUnique(brand)){ //Usuario repetido
            request.getSession().setAttribute("usernameUnique", false);
            ok = false;
        }
        else { //Usuario e email únicos
            if (BrandsDAO.addBrand(brand)) { //La marca se crea correctamente
                request.getSession().setAttribute("emailUnique", true);
                request.getSession().setAttribute("usernameUnique", true);
                request.getSession().setAttribute("username", brand.getUsername());


                request.getRequestDispatcher("/checkout.jsp").forward(request, response); //Llama a la pantalla de checkout

            } else { //La marca no se crea correctamente
                request.getRequestDispatcher("/error.jsp").forward(request, response); //Llama a la pantalla de error
            }
        }
        if(ok == false){
            //Retorna a la página de registro advirtiendo de que el usuario o la contraseña están repetidos
            request.getRequestDispatcher("/registrarse.jsp").forward(request, response);
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
