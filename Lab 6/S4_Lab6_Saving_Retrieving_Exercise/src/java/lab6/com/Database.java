package lab6.com;

import java.sql.*;

public class Database {
    private static final String URL = "jdbc:mysql://localhost:3306/CSA3203";
    private static final String USER = "root";
    private static final String PASS = "Shan@030904"; 

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASS);
    }

    public static void closeConnection(Connection conn, PreparedStatement ps) {
        try {
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}