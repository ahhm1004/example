package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("ProductStockHelper")
public class ProductStockHelper {
	private int product_id;
	private String color;
	private int size_s;
	private int size_m;
	private int size_l;
	private int size_xl;
	private int size_xxl;
	private int size_free;
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getSize_s() {
		return size_s;
	}
	public void setSize_s(int size_s) {
		this.size_s = size_s;
	}
	public int getSize_m() {
		return size_m;
	}
	public void setSize_m(int size_m) {
		this.size_m = size_m;
	}
	public int getSize_l() {
		return size_l;
	}
	public void setSize_l(int size_l) {
		this.size_l = size_l;
	}
	public int getSize_xl() {
		return size_xl;
	}
	public void setSize_xl(int size_xl) {
		this.size_xl = size_xl;
	}
	public int getSize_xxl() {
		return size_xxl;
	}
	public void setSize_xxl(int size_xxl) {
		this.size_xxl = size_xxl;
	}
	public int getSize_free() {
		return size_free;
	}
	public void setSize_free(int size_free) {
		this.size_free = size_free;
	}
	
	
}
