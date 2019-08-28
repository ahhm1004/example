package com.shoppingmall.product.model;

import java.util.List;

public interface ProductDAO {
	
	public int insert(Product product);
	
	public List<Product> selectAll(int subcategory_id);
	
	public List<Product> selectKeyword(String keyword);
	
	public int update(Product product);
	
	public int delete(int product_id);
	
	public Product select(int product_id);
	
	public int productModify(Product product);
	
	public Product viewProduct(String product_id);
	
	public int countArticle(String keyword) throws Exception;
	
	public int countSubcategory(int subcategory_id);
	
}
