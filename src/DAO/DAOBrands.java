package DAO;

import Dominio.Brand;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOBrands {
    public static ConnectionDAO conBD;

    static {
        try {
            conBD = ConnectionDAO.getInstance();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static boolean addBrand(Brand brand){
        boolean ok = true; //
        try {
            PreparedStatement pstmt = conBD.getConnection().prepareStatement("INSERT INTO brands (brandName, username, password," +
                    " userEmail, webAddress, contactEmail," +
                    " description, fiscalAddress, CIF," +
                    " tipoPago, pagoAutomatico, companyName," +
                    " contactPerson, contactDirection) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            pstmt.setNString(1, brand.getName());
            pstmt.setNString(2, brand.getUsername());
            pstmt.setNString(3, brand.getPassword());
            pstmt.setNString(4, brand.getEmail());
            pstmt.setNString(5, brand.getWebAddress());
            pstmt.setNString(6, brand.getBrandContact().getContactEmail());
            pstmt.setNString(7, brand.getDescription());
            pstmt.setNString(8, brand.getCompany().getFiscalAddress());
            pstmt.setNString(9, brand.getCompany().getCIF());
            pstmt.setNString(10, brand.getPayment().getPaymentType());
            pstmt.setBoolean(11, brand.getPayment().isAutomaticPayment());
            pstmt.setNString(12, brand.getUsername());
            pstmt.setNString(13, brand.getPassword());
            pstmt.setNString(14, brand.getUsername());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            ok = false;
            e.printStackTrace();
        }
        return ok;
    }
}
