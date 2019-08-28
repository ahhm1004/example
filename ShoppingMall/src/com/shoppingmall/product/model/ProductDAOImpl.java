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
	public List<Product> selectAll(int subcategory_id) {
		
		List list = sqlSessionTemplate.selectList("Product.selectAll", subcategory_id);
		
		return list;
	}
	
	@Override
	public int countSubcategory(int subcategory_id) {
		return sqlSessionTemplate.selectOne("Product.countSubcategory", subcategory_id);
	}
	@Override
	public List<Product> selectKeyword(String keyword) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("keyword", keyword);
		
		List list = sqlSessionTemplate.selectList("Product.selectList", map);
		
		return list;
	}
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
