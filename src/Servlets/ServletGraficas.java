package Servlets;

import DAO.ConnectionDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "ServletGraficas")
public class ServletGraficas extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            Class.forName("org.mariadb.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mariadb://kosmeticsserver.ddns.net:5432/pat_7?user=pat&password=pat");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM brands");
            ResultSet rs = pstmt.executeQuery();
            int contrato1 = 0;
            int contrato2 = 0;
            int contrato3 = 0;
            while(rs.next()){
                System.out.println("Se ha metido" + contrato1 + contrato2 + contrato3);
                switch (rs.getString("tipoContrato")) {
                    case "contrato1":
                        contrato1++;
                        break;
                    case "contrato2":
                        contrato2++;
                        break;
                    case "contrato3":
                        contrato3++;
                        break;
                    default:
                        break;
                }
            }
            rs.close();
            pstmt.close();
            con.close();

            request.setAttribute("contrato1", contrato1);
            request.setAttribute("contrato2", contrato2);
            request.setAttribute("contrato3", contrato3);
            request.getRequestDispatcher("EstadAdmin.jsp").include(request, response);
        }
        catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
