package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("Brand")
public class Brand {
	private int brand_id	;
	private String name;
	
	public int getBrand_id() {
		return brand_id;
	}
	public String getName() {
		return name;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public void setName(String name) {
		this.name = name;
	}

}
