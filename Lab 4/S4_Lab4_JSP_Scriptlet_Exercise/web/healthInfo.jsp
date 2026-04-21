<%-- 
    Document   : healthInfo
    Created on : 21 Apr 2026, 3:10:16 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%> <%-- Page Directive --%>

<%@include file="header.jsp" %>
<div class="card">
    <h2 class="form-title">BMI Categories Reference</h2>
    <%
        // Store categories in ArrayList
        ArrayList<String[]> categories = new ArrayList<>();
        categories.add(new String[]{"Underweight", "Below 18.5"});
        categories.add(new String[]{"Normal", "18.5 - 25.0"});
        categories.add(new String[]{"Overweight", "Above 25.0"});
    %>
    <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
        <tr style="background-color: #6f42c1; color: white;">
            <th style="padding: 10px;">Category</th>
            <th style="padding: 10px;">BMI Range</th>
        </tr>
        <% for(String[] cat : categories) { %> <%-- Dynamic table display --%>
        <tr>
            <td style="padding: 10px;"><%= cat[0] %></td>
            <td style="padding: 10px;"><%= cat[1] %></td>
        </tr>
        <% } %>
    </table>
</div>
<%@include file="footer.jsp" %>