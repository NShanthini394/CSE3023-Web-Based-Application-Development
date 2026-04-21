<%-- 
    Document   : processCustomer
    Created on : 21 Apr 2026, 1:51:31 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Transaction Summary</title>
        <style>
            body { font-family: 'Segoe UI', sans-serif; background-color: #f4f7f6; padding: 20px; }
            .card { background: white; padding: 30px; border-radius: 8px; max-width: 500px; margin: auto; }
        </style>
    </head>
    <body>
        <div class="card">
            <h2>Transaction Summary</h2>
            <%
                // 1. Setup constants and retrieve data
                final double price = 10.0;
                String custCode = request.getParameter("customerCode");
                String custType = request.getParameter("customerType");
                int quantity = 0;

                try {
                    quantity = Integer.parseInt(request.getParameter("quantity"));
                } catch (Exception e) {
                    quantity = 0;
                }

                // 2. Business logic for discounts
                double total = 0;
                String message = "";

                if (custType.equals("1") && quantity > 100) {
                    message = "You're entitled to 10% discount";
                    total = quantity * price * 0.9;
                } else if (custType.equals("2") && quantity > 100) {
                    message = "You're entitled to 25% discount";
                    total = quantity * price * 0.75;
                } else {
                    message = "You're not entitled to any discount";
                    total = quantity * price;
                }

                String displayType = custType.equals("1") ? "Normal Customer" : "Privilege Customer";
            %>

            <p><b>Customer Code:</b> <%= custCode %></p>
            <p><b>Quantity:</b> <%= quantity %></p>
            <p><b>Customer Type:</b> <%= displayType %></p>
            <hr>
            <p><b>Status:</b> <%= message %></p>
            <h3>Total Amount: RM <%= String.format("%.2f", total) %></h3>
            
            <br>
            <a href="customer.html"><button>Back</button></a>
        </div>
    </body>
</html>