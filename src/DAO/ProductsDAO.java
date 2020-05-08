package DAO;

import Dominio.Brand;
import Dominio.Product;
//import org.jetbrains.annotations.NotNull;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductsDAO {
    public static ConnectionDAO conBD;

    static {
        try {
            conBD = ConnectionDAO.getInstance();
        } catch (ClassNotFoundException | SQLException var1) {
            var1.printStackTrace();
        }
    }

    public ProductsDAO() {
    }

    public static boolean addProduct(Product product, int brandId) {
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
            pstmt.setInt(7, brandId);
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

    public static Product getProduct(String nombre) {
        PreparedStatement pstmt = null;
        Product product = new Product();

        try {
            ConnectionDAO var10000 = conBD;
            pstmt = ConnectionDAO.getConnection().prepareStatement("SELECT * FROM products WHERE name = ? LIMIT 1");
            pstmt.setNString(1, nombre);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                product = new Product(rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver"));
            }
        } catch (SQLException var4) {
            var4.printStackTrace();
        }

        return product;
    }

    public static int getProductID(String name) {
        int id = -1;

        try {
            PreparedStatement pstmt = ConnectionDAO.getConnection().prepareStatement("SELECT idProducts FROM  products WHERE name = ?");
            pstmt.setString(1,name);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
            sqle.printStackTrace();
        }
        return id;
    }

    public static boolean updateProduct(Product product) {
        boolean ok = true;
        try {
            PreparedStatement pstmt = conBD.getConnection().prepareStatement("UPDATE products SET name = ?, description = ?, productCategory = ?, " +
                    "price = ?, offer = ? , freeDeliver = ? WHERE idProducts = ?");
            pstmt.setNString(1, product.getName());
            pstmt.setNString(2, product.getDescription());
            pstmt.setNString(3, product.getProductCategory());
            pstmt.setFloat(4, product.getPrice());
            pstmt.setInt(5, product.getOffer());
            pstmt.setInt(6, product.getFreeDelivery());
            pstmt.setInt(7, product.getId());
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
                products.add(new Product(rs.getInt("idProducts"), rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return products;
    }

    public static ArrayList<Product> getLatestProducts(int idBrand) {
        ArrayList <Product> products = new ArrayList();
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM products WHERE Brands_idBrands = ? ORDER BY idProducts DESC LIMIT 4");
            pstmt.setInt(1, idBrand);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                products.add(new Product(rs.getInt("idProducts"), rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return products;
    }

    public static ArrayList<Product> getProducts(int idBrand) {
        ArrayList <Product> products = new ArrayList();
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM products WHERE Brands_idBrands = ?");
            pstmt.setInt(1, idBrand);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                products.add(new Product(rs.getInt("idProducts"), rs.getNString("name"), rs.getNString("description"), rs.getNString("productCategory"), rs.getFloat("price"), rs.getInt("offer"), rs.getInt("freeDeliver")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return products;
    }

    public static void setFeatures(int productId, String[] idFeatures) {
        try {
            for (String feature : idFeatures) {

                int featureId = Integer.parseInt(feature);
                PreparedStatement pstmt = conBD.getConnection().prepareStatement("INSERT INTO products_features (Products_idProducts,Features_idFeatures) VALUES(?,?)");
                pstmt.setInt(1, productId);
                pstmt.setInt(2, featureId);

                pstmt.executeUpdate();
            }

        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
            sqle.printStackTrace();
        }
    }

    public static int checkImg(int id) {
        int retorno = 0;
        PreparedStatement pstmt = null;

        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT productImg FROM products WHERE idProducts = ?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()){
                if(rs.getBlob(1)!= null){
                    retorno = 1;
                }            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return retorno;
    }

    public static void uploadImg(int id, InputStream imagen, int i) {
        PreparedStatement pstmt = null;

        if(i==0){
            try {
                pstmt = conBD.getConnection().prepareStatement("UPDATE products SET productImg = ? WHERE idProducts = ?");
                pstmt.setBlob(1, imagen);
                pstmt.setInt(2, id);
                pstmt.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else {
            try {
                pstmt = conBD.getConnection().prepareStatement("INSERT INTO productimages (productImg,Products_idProducts) values(?,?)");
                pstmt.setBlob(1, imagen);
                pstmt.setInt(2, id);

                pstmt.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public static void uploadColors(int productId, String colores) {
        try {
            String[] coloresSplit = colores.split(";");
            for (String color: coloresSplit
            ) {
                PreparedStatement pst = conBD.getConnection().prepareStatement("INSERT INTO productcolor (color,Products_idProducts) values(?,?)");
                pst.setString(1,color);
                pst.setInt(2, productId);

                pst.executeUpdate();
            }

        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
            sqle.printStackTrace();
        }
    }

}
