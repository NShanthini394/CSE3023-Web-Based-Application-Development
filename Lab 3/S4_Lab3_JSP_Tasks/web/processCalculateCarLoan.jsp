<%-- 
    Document   : processCalculateCarLoan
    Created on : 14 Apr 2026, 1:53:08 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Car Loan Result</title>
    </head>
    <body>
        <h2>Perform Car Loan Calculation</h2>
        <fieldset>
            <h3 style="color: blue;">Details of car loan:</h3>
            <%
                // 1. Retrieve the data from the HTML form
                double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
                int period = Integer.parseInt(request.getParameter("loanPeriod"));
                
                // 2. Perform logic: Assuming an interest rate of 4.5% (0.045)
                double interestRate = 0.045;
                double totalInterest = loanAmount * interestRate * period;
                double totalLoan = loanAmount + totalInterest;
            %>
            
            <p>Loan Request : <%= loanAmount %></p>
            <p>Period of payment : <%= period %></p>
            <p><b>Total Loan (+ interest) : <%= totalLoan %></b></p>
        </fieldset>
        <p>&copy; 2026-Syaffiq</p>
    </body>
</html>
