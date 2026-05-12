package com.lab.bean;

import java.io.Serializable;

public class CalculatorBean implements Serializable {
    private double number1;
    private double number2;

    public CalculatorBean() {
    }

    public double getNumber1() {
        return number1;
    }

    public void setNumber1(double number1) {
        this.number1 = number1;
    }

    public double getNumber2() {
        return number2;
    }

    public void setNumber2(double number2) {
        this.number2 = number2;
    }

    // Custom method to return the result
    public double getSum() {
        return number1 + number2;
    }
}