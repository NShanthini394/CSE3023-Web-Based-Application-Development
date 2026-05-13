<%-- 
    Document   : processUser
    Created on : 12 May 2026, 4:36:32 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, lab6.com.*"%>
<jsp:useBean id="newUser" class="lab6.com.User" scope="page" />
<jsp:setProperty name="newUser" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <title>Processing Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <%
                Connection conn = null;
                PreparedStatement ps = null;
                try {
                    conn = Database.getConnection();
                    String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, newUser.getUsername());
                    ps.setString(2, newUser.getPassword());
                    ps.setString(3, newUser.getFirstname());
                    ps.setString(4, newUser.getLastname());

                    int result = ps.executeUpdate();
                    if (result > 0) {
                        out.println("<h3 style='color: green;'>Registration Successful!</h3>");
                        out.println("<a href='login.jsp'>Proceed to Login</a>");
                    }
                } catch (Exception e) {
                    out.println("<h3 style='color: red;'>Error: " + e.getMessage() + "</h3>");
                } finally {
                    Database.closeConnection(conn, ps);
                }
            %>
        </div>
    </body>
</html>