<%-- 
    Document   : processStudent
    Created on : 12 May 2026, 6:53:39 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorStudent.jsp"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="studentBean" class="lab6.com.Book" scope="page" />
<jsp:setProperty name="studentBean" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <title>Process Student</title>
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

                    String sql = "INSERT INTO student (stuno, name, program) VALUES (?, ?, ?)";
                    ps = conn.prepareStatement(sql);
                    
                    ps.setString(1, studentBean.getStuno());
                    ps.setString(2, studentBean.getName());
                    ps.setString(3, studentBean.getProgram());

                    int result = ps.executeUpdate();
                    if (result > 0) {
                        out.println("<h3 style='color: green;'>Success! Student record saved.</h3>");
                    }
                } finally {
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                }
            %>
            <br>
            <a href="insertStudent.jsp">Back</a>
        </div>
    </body>
</html>