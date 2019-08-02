package com.shoppingmall.product.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("Product")
public class Product {
	private int product_id;
	private String product_name;
	private int price;
	private int discount;
	private int point;
	private String filename;
	private String detail;
	private String regdate;
	private String stock;
	private int subcategory_id;
	private String subcategory_name;
	private String topcategory_name;
	private int brand_id;
	private String brand_name;
	private int sizeReal;
	MultipartFile myFile;
	
	
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public int getSizeReal() {
		return sizeReal;
	}
	public void setSizeReal(int sizeReal) {
		this.sizeReal = sizeReal;
	}
	public String getSubcategory_name() {
		return subcategory_name;
	}
	public void setSubcategory_name(String subcategory_name) {
		this.subcategory_name = subcategory_name;
	}
	public String getTopcategory_name() {
		return topcategory_name;
	}
	public void setTopcategory_name(String topcategory_name) {
		this.topcategory_name = topcategory_name;
	}
	public int getProduct_id() {
		return product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public int getPrice() {
		return price;
	}
	public int getDiscount() {
		return discount;
	}
	public int getPoint() {
		return point;
	}

	public String getFilename() {
		return filename;
	}
	public String getDetail() {
		return detail;
	}
	public String getRegdate() {
		return regdate;
	}
	public int getSubcategory_id() {
		return subcategory_id;
	}
	public int getBrand_id() {
		return brand_id;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public MultipartFile getMyFile() {
		return myFile;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public void setSubcategory_id(int subcategory_id) {
		this.subcategory_id = subcategory_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public void setMyFile(MultipartFile myFile) {
		this.myFile = myFile;
	}
	
	
	
}
