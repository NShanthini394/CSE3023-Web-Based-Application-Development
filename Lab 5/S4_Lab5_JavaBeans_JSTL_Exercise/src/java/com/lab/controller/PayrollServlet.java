package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PayrollServlet")

public class PayrollServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Create a list and populate with 5 Employee objects
        List<Employee> list = new ArrayList<>();
        
        Employee e1 = new Employee();
        e1.setEmpId("E001"); e1.setName("Sarah"); e1.setDepartment("IT"); e1.setBasicSalary(4500.00);
        
        Employee e2 = new Employee();
        e2.setEmpId("E002"); e2.setName("Ahmad"); e2.setDepartment("HR"); e2.setBasicSalary(2800.00);
        
        Employee e3 = new Employee();
        e3.setEmpId("E003"); e3.setName("Mei Ling"); e3.setDepartment("Finance"); e3.setBasicSalary(3500.00);
        
        Employee e4 = new Employee();
        e4.setEmpId("E004"); e4.setName("Ravi"); e4.setDepartment("Marketing"); e4.setBasicSalary(2500.00);
        
        Employee e5 = new Employee();
        e5.setEmpId("E005"); e5.setName("Siti"); e5.setDepartment("Operations"); e5.setBasicSalary(3100.00);
        
        list.add(e1); list.add(e2); list.add(e3); list.add(e4); list.add(e5);

        // Share the list with the JSP
        request.setAttribute("employeeList", list);
        
        // Forward to the view
        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
    }
}