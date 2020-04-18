package DAO;

import Dominio.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOProducts {
    public static ConnectionDAO conBD;

    public DAOProducts() {
    }

    public static boolean addProduct(Product product) {
        boolean ok = true;

        try {
            ConnectionDAO var10000 = conBD;
            PreparedStatement pstmt = ConnectionDAO.getConnection().prepareStatement("INSERT INTO products (name, description, productCategory, price, offer, idProducts, freeDeliver) VALUES (?, ?, ?, ?, ?, ?, ?)");
            pstmt.setNString(1, product.getName());
            pstmt.setNString(2, product.getDescription());
            pstmt.setNString(3, product.getProductCategory());
            pstmt.setFloat(4, product.getPrice());
            pstmt.setInt(5, product.getOffer());
            pstmt.setInt(6, 16);
            pstmt.setInt(7, 0);
            pstmt.executeUpdate();
        } catch (SQLException var3) {
            ok = false;
            var3.printStackTrace();
        }

        return ok;
    }

    public static Product getProduct(int id) {
        PreparedStatement pstmt = null;
        Product product = new Product();

        try {
            ConnectionDAO var10000 = conBD;
            pstmt = ConnectionDAO.getConnection().prepareStatement("SELECT * FROM products WHERE idProducts = ?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                product = new Product(rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"));
            }
        } catch (SQLException var4) {
            var4.printStackTrace();
        }

        return product;
    }

    static {
        try {
            conBD = ConnectionDAO.getInstance();
        } catch (ClassNotFoundException | SQLException var1) {
            var1.printStackTrace();
        }

    }
}
