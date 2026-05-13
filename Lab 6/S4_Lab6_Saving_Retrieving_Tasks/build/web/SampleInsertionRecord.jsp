<%-- 
    Document   : SampleInsertionRecord
    Created on : 12 May 2026, 4:50:56 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 1: Database Insertion</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h1>Lab 6 Task 1 Sample Insertion records into MySQL through JSP's page</h1>
            
            <div class="result-box">
                <%
                    String url = "jdbc:mysql://localhost:3306/CSA3203";
                    String user = "root";
                    String password = "Shan@030904";
                    
                    Connection conn = null;
                    PreparedStatement ps = null;

                    try {
                        // 1. Load the Driver
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        // 2. Establish Connection
                        conn = DriverManager.getConnection(url, user, password);

                        // 3. Prepare SQL Statement
                        String sql = "INSERT INTO FirstTable (message) VALUES (?)";
                        ps = conn.prepareStatement(sql);
                        ps.setString(1, "Welcome to access MySQL database with JSP...!");

                        // 4. Execute Update
                        int row = ps.executeUpdate();

                        if (row > 0) {
                            out.println("<h3 style='color: green;'>Success! Data inserted into FirstTable.</h3>");
                        }
                    } catch (Exception e) {
                        out.println("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
                    } finally {
                        // 5. Close Resources
                        if (ps != null) ps.close();
                        if (conn != null) conn.close();
                    }
                %>
            </div>
            
            <hr>
            <h3>Steps to connect with MySQL:</h3>
            <ol>
                <li>Start Apache and MySQL services in XAMPP.</li>
                <li>Add the MySQL JDBC Connector to the project Libraries.</li>
                <li>Import the <b>java.sql.*</b> package.</li>
                <li>Load the MySQL driver using <b>Class.forName()</b>.</li>
                <li>Create a connection using <b>DriverManager.getConnection()</b>.</li>
                <li>Execute SQL using Statement or PreparedStatement.</li>
                <li>Close the connection to release resources.</li>
            </ol>
        </div>
    </body>
</html>