package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("ProductStock")
public class ProductStock {
	private int productstock_id;
	private String size;
	private String color;
	private int stock;
	private int product_id;
	
	public ProductStock() {

	}
	
	
	
	public ProductStock(int productstock_id, String size, String color, int stock, int product_id) {
		super();
		this.productstock_id = productstock_id;
		this.size = size;
		this.color = color;
		this.stock = stock;
		this.product_id = product_id;
	}
	
	public int getProductstock_id() {
		return productstock_id;
	}
	public void setProductstock_id(int productstock_id) {
		this.productstock_id = productstock_id;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	
	
	

}
