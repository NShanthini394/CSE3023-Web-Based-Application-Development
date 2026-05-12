package com.lab.bean;

import java.io.Serializable;

/**
 * Requirement: Private variables, empty constructor, and getters/setters.
 */

public class StudentBean implements Serializable {
    private String name;
    private String matricNo;

    // Empty Default Constructor (Compulsory for JavaBeans)
    public StudentBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMatricNo() { 
        return matricNo;
    }

    public void setMatricNo(String matricNo) {
        this.matricNo = matricNo; 
    }
}