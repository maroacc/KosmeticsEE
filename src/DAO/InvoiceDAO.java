package DAO;

import Dominio.Compra;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

public class InvoiceDAO {

    public static ArrayList<Compra> getInvoices() {
        ArrayList<Compra> compras = new ArrayList<Compra>();
        Connection con = null;

        try {
            con = ConnectionDAO.getInstance().getConnection();
            PreparedStatement pst = con.prepareStatement("SELECT * FROM invoice");
            ResultSet rs = pst.executeQuery();
            while(rs.next()) {
                compras.add(new Compra(ProductsDAO.getProduct(rs.getInt(2)),rs.getString(4)));
            }
        } catch (SQLException sqle) {

            System.out.println(sqle.getMessage());
            sqle.printStackTrace();
        } catch (ClassNotFoundException | ParseException cnfe){
            cnfe.printStackTrace();
        }
        return compras;
    }

}