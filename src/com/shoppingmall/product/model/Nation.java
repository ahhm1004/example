package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("Nation")
public class Nation {
	private int nation_id;
	private String name;
	public int getNation_id() {
		return nation_id;
	}
	public String getName() {
		return name;
	}
	public void setNation_id(int nation_id) {
		this.nation_id = nation_id;
	}
	public void setName(String name) {
		this.name = name;
	}

}
