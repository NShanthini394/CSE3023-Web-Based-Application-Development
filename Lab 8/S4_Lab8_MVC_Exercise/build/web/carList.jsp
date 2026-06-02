<%-- 
    Document   : carList
    Created on : 2 Jun 2026, 3:15:37 pm
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
            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Inventory</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container">
        <h3 class="text-center">Car Price List Catalog</h3>
        <hr>
        <div class="text-left mb-3">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Car</a>
        </div>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Car ID</th>
                    <th>Brand</th>
                    <th>Model</th>
                    <th>Cylinder</th>
                    <th>Price (RM)</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${listCar}">
                    <tr>
                        <td><c:out value="${car.carId}" /></td>
                        <td><c:out value="${car.brand}" /></td>
                        <td><c:out value="${car.model}" /></td>
                        <td><c:out value="${car.cyclinder}" /> Cylinders</td>
                        <td>RM <c:out value="${car.price}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${car.carId}' />" class="btn btn-sm btn-primary">Edit</a>
                            <a href="delete?id=<c:out value='${car.carId}' />" onclick="return confirm('Remove this vehicle entry from database?');" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
