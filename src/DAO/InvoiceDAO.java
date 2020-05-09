package DAO;

import Dominio.Compra;
import Dominio.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;

public class InvoiceDAO {

    public static ConnectionDAO conBD;

    static {
        try {
            conBD = ConnectionDAO.getInstance();
        } catch (ClassNotFoundException | SQLException var1) {
            var1.printStackTrace();
        }
    }

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

    public static HashMap countInvoicesPerDay(){

        HashMap hm = new HashMap();
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("select date, count(*) as c FROM invoice GROUP BY date");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                hm.put(rs.getString("date"), rs.getInt("c"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return hm;

    }

}