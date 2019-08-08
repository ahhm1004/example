package com.shoppingmall.product.model;

import java.util.List;

public interface ProductStockDAO {
	public List<ProductStock> selectAll();
	public void insertProductStock(int product_id, String color, int stock, String size);
	public List select(int product_id);
	public void updateProductStock(int product_id, String color, int stock, String size);
}
