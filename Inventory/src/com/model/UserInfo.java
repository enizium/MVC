/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

public class UserInfo {

    private int id;
    private String name;
    private String email;
    private String gender;
    private long phone;
    private String role;

    public UserInfo() {
    }

    public UserInfo(int id, String name, String email, String gender, long phone , String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
        this.role=role;

    }

    public UserInfo(String name, String email, String gender, long phone, String role) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.phone = phone;
         this.role=role;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

}
