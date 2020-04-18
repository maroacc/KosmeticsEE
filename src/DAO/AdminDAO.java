package DAO;

import Dominio.Admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
    public static ConnectionDAO conBD;

    public static String checkLogin(Admin admin) {
        String username = null;
        PreparedStatement pstmt = null;
        try {
            pstmt = conBD.getConnection().prepareStatement("SELECT * FROM users WHERE name = ? AND password = ?");
            pstmt.setNString(1, admin.getUsername());
            pstmt.setNString(2, admin.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                username = rs.getNString(3);
            }
            else {
                pstmt = conBD.getConnection().prepareStatement("SELECT * FROM brands WHERE email = ? AND password = ?");
                pstmt.setNString(1, admin.getUsername());
                pstmt.setNString(2, admin.getPassword());
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
}
