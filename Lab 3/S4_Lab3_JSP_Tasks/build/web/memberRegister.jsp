<%-- 
    Document   : memberRegister
    Created on : 14 Apr 2026, 1:21:14 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Member Registration</title>
    </head>
    <body>
        <h1>Passing data from main JSP page to other JSP page</h1>
        <form id="memberFrm" action="memberProcessing.jsp" method="post">
            <fieldset>
                <legend>Member Registration</legend>
                
                <label for="icno">IC. No</label>
                <input type="text" id="icno" name="my_icno" size="15" placeholder="E.g. 930123034567"><br/>
                
                <label for="name">Name</label>
                <input type="text" id="name" name="my_name" size="45" placeholder="Key-in your name"><br/>
                
                <p>
                    <input type="submit" id="btnSubmit" value="Submit">
                    <input type="reset" id="btnCancel" value="Cancel">
                </p>
            </fieldset>
        </form>
        <p>&copy; 2026-Syaffiq</p>
    </body>
</html>
