package DAO;

import Dominio.Brand;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BrandsDAO {
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
                    "tipoPago = ?, pagoAutomatico = ?, tipoContrato = ? WHERE username = ?");
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
            pstmt.setNString(13, brand.getContract());

            pstmt.setNString(14, brand.getUsername());
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

    public static String checkLogin(Brand brand) {
        String username = null;
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM brands WHERE username = ? AND password = ?");
            pstmt.setNString(1, brand.getUsername());
            pstmt.setNString(2, brand.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                username = rs.getNString(3);
            }
            else {
                pstmt = conBD.getConnection().prepareStatement("SELECT * FROM brands WHERE userEmail = ? AND password = ?");
                pstmt.setNString(1, brand.getUsername());
                pstmt.setNString(2, brand.getPassword());
                ResultSet rs2 = pstmt.executeQuery();
                if(rs2.next()){
                    username = rs.getNString(3);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return username;
    }

    public static Brand getBrand(String username) {
        Brand brand = new Brand();
        brand.setUsername(username);
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM brands WHERE username = ?");
            pstmt.setNString(1, brand.getUsername());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                brand = BrandsDAO.fillBrand(rs);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return brand;
    }

    public static ArrayList <Brand> getLatestBrands() {
        ArrayList <Brand> brands = new ArrayList();
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM brands ORDER BY idBrands DESC LIMIT 4");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                brands.add(BrandsDAO.fillBrand(rs));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return brands;
    }


    public static Brand fillBrand(ResultSet rs) throws SQLException {
        Brand brand = new Brand();
        brand.setName(rs.getNString("brandName"));
        brand.setUsername(rs.getNString("username"));
        brand.setUserEmail(rs.getNString("userEmail"));
        brand.setDescription(rs.getNString("description"));
        brand.setWebAddress(rs.getNString("webAddress"));
        brand.setLogo(rs.getNString("logo"));
        brand.getCompany().setName(rs.getNString("companyName"));
        brand.getCompany().setCIF(rs.getNString("CIF"));
        brand.getCompany().setFiscalAddress(rs.getNString("fiscalAddress"));
        brand.getContact().setName(rs.getNString("contactName"));
        brand.getContact().setEmail(rs.getNString("contactEmail"));
        brand.getContact().setTelephone(rs.getNString("contactTelephone"));
        brand.getContact().setAddress(rs.getNString("contactAddress"));
        brand.getPayment().setPaymentType(rs.getNString("tipoPago"));
        brand.getPayment().setAutomaticPayment(rs.getBoolean("pagoAutomatico"));

        return brand;
    }

    public static int getBrandId(String username) {
        int brandId = 0;
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT idBrands FROM brands WHERE username = ?");
            pstmt.setNString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                brandId = rs.getInt("idBrands");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return brandId;
    }

}
