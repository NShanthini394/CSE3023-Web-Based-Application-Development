<%-- 
    Document   : queryStudent
    Created on : 12 May 2026, 7:43:28 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%> 

<!DOCTYPE html>
<html>
    <head>
        <title>Lab 6 Task 4</title>
        <link rel="stylesheet" href="style.css">
        <style>
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th { background-color: #6f42c1; color: white; padding: 10px; }
            td { padding: 10px; border: 1px solid #ddd; }
            tr:nth-child(even) { background-color: #f9f9f9; }
        </style>
    </head>
    <body>
        <div class="card">
            <h1>Lab 6 Task 4: Retrieving record via JSP Page</h1>
            
            <%
                String url = "jdbc:mysql://localhost:3306/CSA3203";
                String dbUser = "root";
                String dbPass = "Shan@030904";

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, dbUser, dbPass);
                    
                    // Create statement and execute query
                    stmt = conn.createStatement();
                    String sql = "SELECT * FROM student";
                    rs = stmt.executeQuery(sql);
            %>
            
            <table>
                <thead>
                    <tr>
                        <th>Student No</th>
                        <th>Name</th>
                        <th>Program</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Loop through the result set and fetch records into the table
                        while(rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("stuno") %></td>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("program") %></td>
                    </tr>
                    <%
                        } // end while
                    %>
                </tbody>
            </table>

            <%
                } catch (Exception e) {
                    out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
                } finally {
                    // Close resources
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
            <br>
            <a href="insertStudent.jsp">Register Another Student</a>
        </div>
    </body>
</html>
