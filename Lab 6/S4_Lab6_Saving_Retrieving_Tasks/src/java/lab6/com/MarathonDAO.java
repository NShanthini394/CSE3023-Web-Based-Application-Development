package lab6.com;

import java.sql.*;

public class MarathonDAO {
    public int addMarathon(Marathon marathon) {
        int result = 0;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = Database.getConnection();
            String sql = "INSERT INTO marathon (icNo, name, category) VALUES (?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, marathon.getIcNo());
            ps.setString(2, marathon.getName());
            ps.setString(3, marathon.getCategory());

            result = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Database.closeConnection(conn, ps);
        }
        return result;
    }
}