<%-- 
    Document   : processCurrency
    Created on : 21 Apr 2026, 1:58:03 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Conversion Result</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h2 class="form-title">Conversion Result</h2>
            
            <%! 
                // 1. JSP DECLARATION: Define constants and methods
                final double USD = 0.25;
                final double EURO = 0.21;
                final double JPY = 40.0;
                final double SGD = 0.32;

                // Reusable method to calculate conversion
                private double calculateRate(String currency, int amount) {
                    double currencyChange = 0.0;
                    if (currency != null) {
                        if (currency.equals("1")) currencyChange = amount * USD;
                        else if (currency.equals("2")) currencyChange = amount * EURO;
                        else if (currency.equals("3")) currencyChange = amount * JPY;
                        else currencyChange = amount * SGD;
                    }
                    return currencyChange;
                }
            %>

            <%
                // 2. JSP SCRIPTLET: Retrieve and process data
                String currencyType = request.getParameter("currencyType");
                String amountRaw = request.getParameter("amount");
                int amount = 0;
                double total = 0;

                try {
                    if (amountRaw != null) {
                        amount = Integer.parseInt(amountRaw);
                        total = calculateRate(currencyType, amount); // Calling the method defined above
                    }
                } catch (Exception e) {
                    amount = 0;
                }

                // Determine name for display
                String currencyName = "";
                if ("1".equals(currencyType)) currencyName = "USD";
                else if ("2".equals(currencyType)) currencyName = "EURO";
                else if ("3".equals(currencyType)) currencyName = "JPY";
                else if ("4".equals(currencyType)) currencyName = "SGD";
            %>

            <p><b>Amount in Ringgit Malaysia (RM):</b> RM <%= amount %></p>
            <p><b>Converted to (<%= currencyName %>):</b> <%= String.format("%.2f", total) %></p>
            
            <br>
            <a href="currencyConversion.html"><button class="btn-back">Back to Converter</button></a>
        </div>
    </body>
</html>
