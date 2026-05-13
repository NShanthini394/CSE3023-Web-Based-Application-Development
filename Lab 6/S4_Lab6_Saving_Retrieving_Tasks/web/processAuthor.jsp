<%-- 
    Document   : processAuthor
    Created on : 12 May 2026, 5:45:41 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="authorBean" class="lab6.com.Author" scope="page" />
<jsp:setProperty name="authorBean" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <title>Process Author</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <%
                String url = "jdbc:mysql://localhost:3306/CSA3203";
                String dbUser = "root";
                String dbPass = "Shan@030904";

                Connection conn = null;
                PreparedStatement ps = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, dbUser, dbPass);

                    String sql = "INSERT INTO author (authno, name, address, city, "
                            + "state, zip) VALUES (?, ?, ?, ?, ?, ?)";
                    ps = conn.prepareStatement(sql);
                    
                    ps.setString(1, authorBean.getAuthno());
                    ps.setString(2, authorBean.getName());
                    ps.setString(3, authorBean.getAddress());
                    ps.setString(4, authorBean.getCity());
                    ps.setString(5, authorBean.getState());
                    ps.setString(6, authorBean.getZip());

                    int result = ps.executeUpdate();
                    if (result > 0) {
                        out.println("<h3 style='color: green;'>Success! Author "
                                + "registered in database.</h3>");
                    }
                } catch (Exception e) {
                    out.println("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
                } finally {
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                }
            %>
            <br>
            <a href="insertAuthor.jsp">Back to Registration</a>
        </div>
    </body>
</html>
