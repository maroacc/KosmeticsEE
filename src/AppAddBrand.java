
import DAO.DAOBrands;
import Dominio.Brand;

import java.sql.PreparedStatement;
import java.util.Scanner;

public class AppAddBrand {
    public static void main(String[] args) {
            System.out.println("El programa se está ejecutando...");
            System.out.println(DAOBrands.addBrand(new Brand("name", "username", "password", "userEmail", "webAddress", "contactEmail", "description", "fiscalAddress", "CIF", "tipoPago", true, "companyName", "contactPerson", "contactDirection")));

    }
}
