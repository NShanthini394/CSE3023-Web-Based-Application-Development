<%-- 
    Document   : carForm
    Created on : 2 Jun 2026, 4:07:45 pm
    Author     : shant
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Shop Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #2c3e50">
            <a href="" class="navbar-brand">Car Shop Admin Console</a>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${car != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${car == null}">
                    <form action="insert" method="post">
                </c:if>
                
                <h2>
                    <c:if test="${car != null}">Modify Car Record</c:if>
                    <c:if test="${car == null}">Register New Vehicle Entry</c:if>
                </h2>
                
                <c:if test="${car != null}">
                    <input type="hidden" name="id" value="<c:out value='${car.carId}' />" />
                </c:if>
                
                <fieldset class="form-group">
                    <label>Vehicle Brand</label>
                    <input type="text" value="<c:out value='${car.brand}' />" class="form-control" name="brand" required="required">
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Model Variant</label>
                    <input type="text" value="<c:out value='${car.model}' />" class="form-control" name="model" required="required">
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Engine Cylinders</label>
                    <input type="number" value="<c:out value='${car.cyclinder}' />" class="form-control" name="cylinder" required="required">
                </fieldset>
                
                <fieldset class="form-group">
                    <label>Retail Price (RM)</label>
                    <input type="number" step="0.01" value="<c:out value='${car.price}' />" class="form-control" name="price" required="required">
                </fieldset>
                
                <button type="submit" class="btn btn-success">Save Entry</button>
                <a href="list" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
