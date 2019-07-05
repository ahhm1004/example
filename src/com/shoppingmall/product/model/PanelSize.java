	package com.shoppingmall.product.model;

import org.apache.ibatis.type.Alias;

@Alias("PanelSize")
public class PanelSize {
	private int panelsize_id;
	private String name;
	public int getPanelsize_id() {
		return panelsize_id;
	}
	public String getName() {
		return name;
	}
	public void setPanelsize_id(int panelsize_id) {
		this.panelsize_id = panelsize_id;
	}
	public void setName(String name) {
		this.name = name;
	}

}
