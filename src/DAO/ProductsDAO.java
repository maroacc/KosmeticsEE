package DAO;

import Dominio.Brand;
import Dominio.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductsDAO {
    public static ConnectionDAO conBD;

    public ProductsDAO() {
    }

    public static boolean addProduct(Product product) {
        boolean ok = true;

        try {
            ConnectionDAO var10000 = conBD;
            PreparedStatement pstmt = ConnectionDAO.getConnection().prepareStatement("INSERT INTO products (name, description, productCategory, price, offer, freeDeliver, Brands_idBrands) VALUES (?, ?, ?, ?, ?, ?, ?)");
            pstmt.setNString(1, product.getName());
            pstmt.setNString(2, product.getDescription());
            pstmt.setNString(3, product.getProductCategory());
            pstmt.setFloat(4, product.getPrice());
            pstmt.setInt(5, product.getOffer());
            pstmt.setInt(6, 0);
            pstmt.setInt(7, 17);
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
                product = new Product(rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver"));
            }
        } catch (SQLException var4) {
            var4.printStackTrace();
        }

        return product;
    }

    public static boolean updateBrand(Product product) {
        boolean ok = true;
        try {
            PreparedStatement pstmt = conBD.getConnection().prepareStatement("UPDATE products SET name = ?, description = ?, productCategory = ?, " +
                    "price = ?, offer = ? , freeDeliver = ? WHERE name = ?");
            pstmt.setNString(1, product.getName());
            pstmt.setNString(2, product.getDescription());
            pstmt.setNString(3, product.getProductCategory());
            pstmt.setFloat(4, product.getPrice());
            pstmt.setInt(5, product.getOffer());
            pstmt.setInt(6, product.getFreeDelivery());
            pstmt.executeUpdate();

        }
        catch (SQLException e) {
            e.printStackTrace();
            ok = false;
        }

        return ok;
    }

    public static ArrayList<Product> getLatestProducts() {
        ArrayList <Product> products = new ArrayList();
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM products ORDER BY idProducts DESC LIMIT 4");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                products.add(new Product(rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return products;
    }

    static {
        try {
            conBD = ConnectionDAO.getInstance();
        } catch (ClassNotFoundException | SQLException var1) {
            var1.printStackTrace();
        }
    }
}