package com.shoppingmall.product.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductStockDAOImpl implements ProductStockDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ProductStock> selectAll() {
				
		List list = sqlSessionTemplate.selectList("ProductStock.selectAll");
		
		return list;
	}
	
	@Override
	public void insertProductStock(int product_id, String color, int stock, String size)
	{		
		ProductStock productStock = new ProductStock();
		productStock.setColor(color);
		productStock.setProduct_id(product_id);
		productStock.setSize(size);
		productStock.setStock(stock);
		
		try
		{
			sqlSessionTemplate.insert("ProductStock.insert", productStock);
		}
		catch(Exception e)
		{
			System.out.println("중복되는 색 또는 사이즈를 넣었습니다.");
		}
	}
	
	@Override
	public List select(int product_id)
	{
		List list = sqlSessionTemplate.selectList("ProductStock.select", product_id);
		
		return list;
	}
	
	@Override
	public void updateProductStock(int product_id, String color, int stock, String size)
	{		
		ProductStock productStock = new ProductStock();
		productStock.setColor(color);
		productStock.setProduct_id(product_id);
		productStock.setSize(size);
		productStock.setStock(stock);
		
		sqlSessionTemplate.update("ProductStock.update", productStock);
	}
}
