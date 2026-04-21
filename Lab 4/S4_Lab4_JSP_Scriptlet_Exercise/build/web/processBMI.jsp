<%-- 
    Document   : processBMI
    Created on : 21 Apr 2026, 3:09:31 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    // 1. Retrieve values
    String wRaw = request.getParameter("weight");
    String hRaw = request.getParameter("height");
    
    double weight = 0, height = 0, bmi = 0;
    String category = "";

    try {
        weight = Double.parseDouble(wRaw);
        height = Double.parseDouble(hRaw);

        // 2. Validation: Height must not be zero
        if (height > 0) {
            // 3. Calculate BMI: weight / (height * height)
            bmi = weight / (height * height);

            // 4. Determine Category
            if (bmi < 18.5) category = "Underweight";
            else if (bmi <= 25) category = "Normal";
            else category = "Overweight";

            // 5. Forward to result page with parameters 
%>
            <jsp:forward page="resultBMI.jsp">
                <jsp:param name="bmiValue" value="<%= String.valueOf(bmi) %>" />
                <jsp:param name="bmiCategory" value="<%= category %>" />
            </jsp:forward>
<%
        } else {
            out.println("<script>alert('Height cannot be zero!'); window.location='bmiCalculator.jsp';</script>");
        }
    } catch (Exception e) {
        out.println("<script>alert('Please enter valid numeric values!'); window.location='bmiCalculator.jsp';</script>");
    }
%>