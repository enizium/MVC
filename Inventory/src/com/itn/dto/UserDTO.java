/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itn.dto;

public class UserDTO {
    private int id;
    private String name;
    private String email;
    private String gender;
    private String role;
    private long phone;
    private String username;
    private String password;
    private String active;

    public UserDTO() {
    }

    public UserDTO(int id, String name, String email, String gender, String role, long phone, String username, String password, String active) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.role = role;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.active = active;
    }

    public UserDTO(String name, String email, String gender, String role, long phone, String username, String password, String active) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.role = role;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.active = active;
    }

    public UserDTO(int id, String name, String email, String gender, String role, long phone, String username, String active) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.role = role;
        this.phone = phone;
        this.username = username;
        this.active = active;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

  
  
    
}
