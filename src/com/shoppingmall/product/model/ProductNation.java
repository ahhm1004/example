package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("ProductNation")
public class ProductNation {
	private int productnation_id;
	private int product_id;
	private int nation_id;
	public int getProductnation_id() {
		return productnation_id;
	}
	public void setProductnation_id(int productnation_id) {
		this.productnation_id = productnation_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getNation_id() {
		return nation_id;
	}
	public void setNation_id(int nation_id) {
		this.nation_id = nation_id;
	}
	
	
}
