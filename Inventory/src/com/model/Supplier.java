package com.model;


public class Supplier {
    
    private int id;
    private String name;
    private String country;
    private String city;
    private String street;
    private int postalcode;
    private long phone;
    private String email;
    private long acc_no;
    private String acc_bank;

    public Supplier() {
    }
    

    public Supplier(String name, String country, String city, String street, int postalcode, long phone, String email, long acc_no, String acc_bank) {
        this.name = name;
        this.country = country;
        this.city = city;
        this.street = street;
        this.postalcode = postalcode;
        this.phone = phone;
        this.email = email;
        this.acc_no = acc_no;
        this.acc_bank = acc_bank;
    }

    public Supplier(int id, String name, String country, String city, String street, int postalcode, long phone, String email, long acc_no, String acc_bank) {
        this.id = id;
        this.name = name;
        this.country = country;
        this.city = city;
        this.street = street;
        this.postalcode = postalcode;
        this.phone = phone;
        this.email = email;
        this.acc_no = acc_no;
        this.acc_bank = acc_bank;
    }
     

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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getPostalcode() {
        return postalcode;
    }

    public void setPostalcode(int postalcode) {
        this.postalcode = postalcode;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getAcc_no() {
        return acc_no;
    }

    public void setAcc_no(long acc_no) {
        this.acc_no = acc_no;
    }

    public String getAcc_bank() {
        return acc_bank;
    }

    public void setAcc_bank(String acc_bank) {
        this.acc_bank = acc_bank;
    }
    
    
}
