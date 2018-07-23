/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author enizium
 */
public class UserLogin {
    private int id;
    private String username;
    private String password;
    private String email;

    public UserLogin() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public UserLogin(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public UserLogin(int id, String username, String password, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public UserLogin(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public UserLogin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsernmae() {
        return username;
    }

    public void setUsernmae(String usernmae) {
        this.username = usernmae;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
    
}
