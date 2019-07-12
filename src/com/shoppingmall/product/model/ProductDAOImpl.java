package com.shoppingmall.product.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insert(Product product) {
		int key = 0; 
		
		sqlSessionTemplate.insert("Product.insert", product);
		
		key = product.getProduct_id();
		
		return key;
	}

	@Override
	public List<Product> selectAll(String keyword) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		
		List list = sqlSessionTemplate.selectList("Product.selectAll", map);
		
		return list;

	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int product_id) {
		
		sqlSessionTemplate.delete("Product.delete",product_id);
		
		return 0;
	}


	@Override
	public Product select(int product_id) {
		
		Product product = (Product)sqlSessionTemplate.selectOne("Product.selectOne", product_id);
		
		return product;
	}
	
	@Override
	public int productModify(Product product) {
		int key = 0; 
		
		sqlSessionTemplate.update("Product.update", product);		
		
		key = product.getProduct_id();
			
		return key;
	}
	
	@Override
	public Product viewProduct(String product_id)
	{
		
		return sqlSessionTemplate.selectOne("Product.view", product_id);
	}
	
	@Override
	public int countArticle(String keyword) throws Exception
	{
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		return sqlSessionTemplate.selectOne("Product.countArticle", map);
	}
}
