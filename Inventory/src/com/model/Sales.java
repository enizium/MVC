/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

import java.sql.Date;

/**
 *
 * @author enizium
 */
public class Sales {

    private int id;
    private String name;
    private String brand;
    private String type;
    private String category;
    private Date date;

    private int qunatity;

    public Sales() {
    }

    public Sales(String name, String brand, String type, String category, Date date, int qunatity) {
        this.name = name;
        this.brand = brand;
        this.type = type;
        this.category = category;
        this.date = date;
        this.qunatity = qunatity;
    }

    public Sales(String name, String brand, String type, String category, Date date, int qunatity, int id) {
        this.name = name;
        this.brand = brand;
        this.type = type;
        this.category = category;
        this.date = date;
        this.qunatity = qunatity;
        this.id = id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getQunatity() {
        return qunatity;
    }

    public void setQunatity(int qunatity) {
        this.qunatity = qunatity;
    }

}