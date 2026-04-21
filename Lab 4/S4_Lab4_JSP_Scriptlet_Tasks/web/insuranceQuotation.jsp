<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2026, 2:47:36 pm
    Author     : shant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="card">
            <h1 class="form-title">Insurance Quotation</h1>
            <form action="processInsuranceQuo.jsp" method="POST">
                <div class="form-group">
                    <label>IC No *</label>
                    <input type="text" name="icno" placeholder="e.g. 888888-08-8888" required>
                </div>
                
                <div class="form-group">
                    <label>Name *</label>
                    <input type="text" name="name" placeholder="Enter name" required>
                </div>
                
                <div class="form-group">
                    <label>Market Price *</label>
                    <input type="number" name="price" placeholder="Enter price" required>
                </div>
                
                <div class="form-group">
                    <label>Coverage Type</label>
                    <select name="coverage">
                        <option value="comprehensive">Comprehensive</option>
                        <option value="thirdparty">Third Party</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label>No Claims Discount (NCD)</label>
                    <select name="ncd">
                        <option value="0.0">0%</option>
                        <option value="0.25">25%</option>
                        <option value="0.55">55%</option>
                    </select>
                </div>
                
                <div class="button-group">
                    <input type="submit" class="btn btn-submit" value="Submit">
                    <input type="reset" class="btn btn-cancel" value="Cancel">
                </div>
            </form>
        </div>
    </body>
</html>