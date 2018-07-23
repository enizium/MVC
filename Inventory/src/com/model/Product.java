
package com.model;

import java.sql.Date;


public class Product {
    
    private int id;
    private String name;
    private String brand;
    private String category;
    private String type;
    private String image;
    private String description;
    private Date deliveredOn;
    private int quantity;
    private Double price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDeliveredOn() {
        return deliveredOn;
    }

    public void setDeliveredOn(Date deliveredOn) {
        this.deliveredOn = deliveredOn;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Product(int id, String name, String brand, String category, String type, String image, String description, Date deliveredOn, int quantity, Double price) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.category = category;
        this.type = type;
        this.image = image;
        this.description = description;
        this.deliveredOn = deliveredOn;
        this.quantity = quantity;
        this.price = price;
    }

    public Product(String name, String brand, String category, String type, String image, String description, Date deliveredOn, int quantity, Double price) {
        this.name = name;
        this.brand = brand;
        this.category = category;
        this.type = type;
        this.image = image;
        this.description = description;
        this.deliveredOn = deliveredOn;
        this.quantity = quantity;
        this.price = price;
    }

    public Product(String name, String brand, String category, String type, Date deliveredOn, int quantity, Double price) {
        this.name = name;
        this.brand = brand;
        this.category = category;
        this.type = type;
        this.deliveredOn = deliveredOn;
        this.quantity = quantity;
        this.price = price;
    }

    public Product(int id, String name, String brand, String category, String type, Date deliveredOn, int quantity, Double price) {
        this.id = id;
        this.name = name;
        this.brand = brand;
        this.category = category;
        this.type = type;
        this.deliveredOn = deliveredOn;
        this.quantity = quantity;
        this.price = price;
    }
    

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", brand=" + brand + ", category=" + category + ", type=" + type + ", image=" + image + ", description=" + description + ", deliveredOn=" + deliveredOn + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
