package com.model;

public class Stock {
	  private int id;
	    private String name;
	    private String brand;
	    private int quantity;
		public Stock() {
			super();
		}
		public Stock(String name, String brand, int quantity) {
			super();
			this.name = name;
			this.brand = brand;
			this.quantity = quantity;
		}
		public Stock(int id, String name, String brand, int quantity) {
			super();
			this.id = id;
			this.name = name;
			this.brand = brand;
			this.quantity = quantity;
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
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
	    
}
