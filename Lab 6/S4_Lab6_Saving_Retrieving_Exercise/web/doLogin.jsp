<%-- 
    Document   : doLogin
    Created on : 12 May 2026, 4:37:22 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, lab6.com.*"%>

<%
    String u = request.getParameter("username");
    String p = request.getParameter("password");

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        conn = Database.getConnection();
        String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
        ps = conn.prepareStatement(sql);
        ps.setString(1, u);
        ps.setString(2, p);
        rs = ps.executeQuery();

        if (rs.next()) {
            // Validation succeeds: create a session and redirect
            session.setAttribute("user", u);
            session.setAttribute("fname", rs.getString("firstname"));
            session.setAttribute("lname", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            // Validation fails: redirect back with message
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (rs != null) rs.close();
        Database.closeConnection(conn, ps);
    }
%>