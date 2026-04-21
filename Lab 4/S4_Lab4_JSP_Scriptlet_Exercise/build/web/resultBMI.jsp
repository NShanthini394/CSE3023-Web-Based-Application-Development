<%-- 
    Document   : resultBMI
    Created on : 21 Apr 2026, 3:09:54?pm
    Author     : shant
--%>

<%@include file="header.jsp" %>
<div class="card">
    <h2 class="form-title">Your BMI Result</h2>
    <%
        String bmiStr = request.getParameter("bmiValue");
        double bmiValue = Double.parseDouble(bmiStr);
        String category = request.getParameter("bmiCategory");
    %>
    <div class="result-box">
        <p><b>Calculated BMI:</b> <%= String.format("%.2f", bmiValue) %></p>
        <p><b>Health Category:</b> <span style="color: #6f42c1; font-weight: bold;"><%= category %></span></p>
    </div>
    <br>
    <a href="bmiCalculator.jsp" class="btn-back" style="text-decoration:none;">New Calculation</a>
</div>
<%@include file="footer.jsp" %>