package DAO;

import Dominio.Brand;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
                    " contactName, contactAddress) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            pstmt.setNString(1, brand.getName());
            pstmt.setNString(2, brand.getUsername());
            pstmt.setNString(3, brand.getPassword());
            pstmt.setNString(4, brand.getUserEmail());
            pstmt.setNString(5, brand.getWebAddress());
            pstmt.setNString(6, brand.getContact().getEmail());
            pstmt.setNString(7, brand.getDescription());
            pstmt.setNString(8, brand.getCompany().getFiscalAddress());
            pstmt.setNString(9, brand.getCompany().getCIF());
            pstmt.setNString(10, brand.getPayment().getPaymentType());
            pstmt.setBoolean(11, brand.getPayment().isAutomaticPayment());
            pstmt.setNString(12, brand.getCompany().getName());
            pstmt.setNString(13, brand.getContact().getName());
            pstmt.setNString(14, brand.getContact().getAddress());

            pstmt.executeUpdate();

        } catch (SQLException e) {
            ok = false;
            e.printStackTrace();
        }
        return ok;
    }
    public static boolean updateBrand(Brand brand) {
        boolean ok = true;
        try {
            PreparedStatement pstmt = conBD.getConnection().prepareStatement("UPDATE brands SET brandName = ?, description = ?, webAddress = ?, " +
                    "companyName = ?, CIF = ? , fiscalAddress = ? , contactEmail = ?, contactName = ?, contactTelephone = ?, contactAddress = ?," +
                    "tipoPago = ?, pagoAutomatico = ? WHERE username = ?");
            pstmt.setNString(1, brand.getName());
            pstmt.setNString(2, brand.getDescription());
            pstmt.setNString(3, brand.getWebAddress());
            pstmt.setNString(4, brand.getCompany().getName());
            pstmt.setNString(5, brand.getCompany().getCIF());
            pstmt.setNString(6, brand.getCompany().getFiscalAddress());
            pstmt.setNString(7, brand.getContact().getEmail());
            pstmt.setNString(8, brand.getContact().getName());
            pstmt.setNString(9, brand.getContact().getTelephone());
            pstmt.setNString(10, brand.getContact().getAddress());
            pstmt.setNString(11, brand.getPayment().getPaymentType());
            pstmt.setBoolean(12, brand.getPayment().isAutomaticPayment());

            pstmt.setNString(13, brand.getUsername());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            ok = false;
        }

    return ok;
    }

    public static boolean checkUsernameUnique(Brand brand){
        boolean unique = true;
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT 1 FROM brands WHERE username = ?");
            pstmt.setNString(1, brand.getUsername());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next() == true){
                unique = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return unique;
    }

    public static boolean checkEmailUnique(Brand brand){
        boolean unique = true;
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT 1 FROM brands WHERE userEmail = ?");
            pstmt.setNString(1, brand.getUserEmail());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next() == true){
                unique = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return unique;
    }

    public static boolean checkBrandNameUnique(Brand brand){
        boolean unique = true;
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT 1 FROM brands WHERE brandName = ?");
            pstmt.setNString(1, brand.getName());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next() == true){
                unique = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return unique;
    }
}
