<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2026, 2:48:13 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Insurance Quotation Result</h2>
            
            <%
                // 1. Retrieve and convert form data
                String icno = request.getParameter("icno");
                String name = request.getParameter("name");
                String coverage = request.getParameter("coverage");
                double price = Double.parseDouble(request.getParameter("price"));
                double ncdRate = Double.parseDouble(request.getParameter("ncd"));

                // 2. Determine insurance rate 
                double rate = ("comprehensive".equals(coverage)) ? 0.05 : 0.03;
                String coverageDisplay = ("comprehensive".equals(coverage)) ? 
                        "Comprehensive" : "Third Party";

                // 3. Business Logic Calculations
                double baseInsurance = price * rate;
                double ncdAmount = baseInsurance * ncdRate;
                double afterNCD = baseInsurance - ncdAmount;
                double sst = afterNCD * 0.08; // 8% SST
                double finalAmount = afterNCD + sst;
            %>

            <%-- 4. Display the results --%>
            <div class="result-box">
                <p><b>IC No:</b> <%= icno %></p>
                <p><b>Name:</b> <%= name %></p>
                <p><b>Market Price:</b> RM <%= String.format("%.2f", price) %></p>
                <p><b>Coverage Type:</b> <%= coverageDisplay %></p>
                <p><b>NCD Rate:</b> <%= (int)(ncdRate * 100) %>%</p>
                <hr>
                <p><b>Base Insurance:</b> RM <%= String.format("%.2f", baseInsurance) %></p>
                <p><b>NCD Discount:</b> -RM <%= String.format("%.2f", ncdAmount) %></p>
                <p><b>After NCD:</b> RM <%= String.format("%.2f", afterNCD) %></p>
                <p><b>SST (8%):</b> RM <%= String.format("%.2f", sst) %></p>
                <h3>Final Insurance Amount: RM <%= String.format("%.2f", finalAmount) %></h3>
            </div>
            
            <br>
            <a href="insuranceQuotation.jsp"><button class="btn-back">Back</button></a>
        </div>
    </body>
</html>
