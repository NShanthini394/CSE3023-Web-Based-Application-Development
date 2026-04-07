package com.lab.controller;

import com.lab.dao.ProductDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteProductServlet extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Retrieve the ID of the product to delete from the URL
        String idParam = request.getParameter("id");
        
        if (idParam != null) {
            int id = Integer.parseInt(idParam);
            
            // 2. Call the DAO to perform the deletion (Strict rule: No JDBC here!)
            productDAO.deleteProduct(id);
        }

        // 3. Redirect the user back to the ViewProductServlet to see the updated list
        response.sendRedirect("ViewProductServlet");
    }
}