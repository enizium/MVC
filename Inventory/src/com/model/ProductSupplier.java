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
public class ProductSupplier {

    private int id;
    private int pid;
    private String pname;
    private int sid;
    private String sname;

    public ProductSupplier() {
    }

    public ProductSupplier(int id, int pid, int sid) {
        this.id = id;
        this.pid = pid;
        this.sid = sid;
    }
    
    public ProductSupplier( int id,int pid, String pname, int sid, String sname) {
        this.id = id;
        this.pid = pid;
        this.sid = sid;
        this.pname = pname;
        this.sname = sname;
    }

    public ProductSupplier(int pid, String pname, int sid, String sname) {
        this.pid = pid;
        this.pname = pname;
        this.sid = sid;
        this.sname = sname;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

}
