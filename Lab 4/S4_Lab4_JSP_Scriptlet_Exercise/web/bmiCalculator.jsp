<%-- 
    Document   : bmiCalculator
    Created on : 21 Apr 2026, 3:08:41 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<div class="card">
    <h2 class="form-title">BMI Calculator</h2>
    <form action="processBMI.jsp" method="POST">
        <div class="form-group">
            <label>Weight (kg):</label>
            <input type="number" step="0.01" name="weight" placeholder="e.g. 65" required>
        </div>
        <div class="form-group">
            <label>Height (m):</label>
            <input type="number" step="0.01" name="height" placeholder="e.g. 1.70" required>
        </div>
        <div class="button-group">
            <button type="submit" class="btn btn-submit">Calculate BMI</button>
        </div>
    </form>
</div>
<%@include file="footer.jsp" %>