package com.shoppingmall.member.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.shoppingmall.member.model.Member;
import com.shoppingmall.product.model.Product;

public interface MemberService {
	public void insert(Member member);
	
	public List selectId(Member member);
	
	public int checkLogin(Member member);
	
	public Member selectOne(String id);
	
	public List<Product> selectAll(int subcategory_id);
	
	public int countSubcategory(int subcategory_id);
	
	public ArrayList<String> findId(Member member);
	
	public void changePwd(String newPwd, String id);
	
	public Product detailProduct(int product_id);
}
