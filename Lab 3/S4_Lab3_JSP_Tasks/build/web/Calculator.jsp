<%-- 
    Document   : Calculator
    Created on : 14 Apr 2026, 1:40:21 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Basic Calculator</title>
    </head>
    <body bgcolor="#87CEEB" text="black">
        <center>
            <h2>Basic calculator program in JSP</h2>
            
            <%
                // 1. Initialize variables
                String num1 = "0", num2 = "0";
                int result = 0;
                String op = "0"; 
                char opchar = '0';

                // 2. Check if a calculation has been requested 
                if (request.getParameter("op") != null) {
                    op = request.getParameter("op"); // Get operator index
                    opchar = op.charAt(0);
                    
                    num1 = request.getParameter("operand1"); // Get first number 
                    num2 = request.getParameter("operand2"); // Get second number 

                    // 3. Perform calculation based on the selected operator
                    switch(opchar) {
                        case '0':
                            result = Integer.parseInt(num1) + Integer.parseInt(num2);
                            break;
                        case '1': 
                            result = Integer.parseInt(num1) - Integer.parseInt(num2);
                            break;
                        case '2':
                            result = Integer.parseInt(num1) * Integer.parseInt(num2);
                            break;
                        case '3': 
                            result = Integer.parseInt(num1) / Integer.parseInt(num2);
                            break;
                        case '4':
                            result = Integer.parseInt(num1) % Integer.parseInt(num2);
                            break;
                    }
                }
            %>

            <form method="get" name="f1">
                <input type="text" size="20" name="operand1" value="<%= num1 %>" />
                
                <select name="op" size="1">
                    <option value="0" <%= op.equals("0") ? "selected" : "" %>>+</option>
                    <option value="1" <%= op.equals("1") ? "selected" : "" %>>-</option>
                    <option value="2" <%= op.equals("2") ? "selected" : "" %>>*</option>
                    <option value="3" <%= op.equals("3") ? "selected" : "" %>>/</option>
                    <option value="4" <%= op.equals("4") ? "selected" : "" %>>%</option>
                </select>
                
                <input type="text" size="20" name="operand2" value="<%= num2 %>" />
                <br><br>
                <input type="submit" value="Calculate"/>
            </form>

            <br>
            <h3>Result = <%= result %></h3>
        </center>
    </body>
</html>