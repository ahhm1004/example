package com.shoppingmall.member.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.shoppingmall.member.model.Member;
import com.shoppingmall.member.model.MemberDAO;
import com.shoppingmall.product.model.EventProduct1;
import com.shoppingmall.product.model.Product;
import com.shoppingmall.product.model.ProductDAO;

import common.exception.DidNotCheckLoginException;

@Service
public class MemberServiceImpl implements MemberService {
	String tag = this.getClass().getName();

	@Autowired
	@Qualifier("mybatisMemberDAO")
	private MemberDAO memberDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public void insert(Member member) {
		// TODO Auto-generated method stub
		System.out.println(tag + "dd");
		memberDAO.insert(member);
	}

	@Override
	public List selectId(Member member) throws DidNotCheckLoginException{
		// TODO Auto-generated method stub
		List list = memberDAO.selectId(member);

		return list;
	}

	@Override
	public int checkLogin(Member member) throws DidNotCheckLoginException {
		int result = memberDAO.checkLogin(member);
		return result;
	}
	
	@Override
	public Member selectOne(String id) {
		Member member=memberDAO.selectOne(id);
		return member;
	}
	
	@Override
	public List<Product> selectAll(int subcategory_id) {
		List list = productDAO.selectAll(subcategory_id);
		return list;
	}
	
	@Override
	public int countSubcategory(int subcategory_id) {
		return productDAO.countSubcategory(subcategory_id);
	}
	
	@Override
	public ArrayList<String> findId(Member member) {
		
		List<Member> list = memberDAO.findId(member);
		
		ArrayList<String> findId = new ArrayList<String>();  
		for(int i =0; i <list.size(); i ++) {
			String Id = list.get(i).getId();
			findId.add(Id);

		}
		return findId;
	}
	
	@Override
	public void changePwd(String newPwd, String id)
	{

		memberDAO.changePwd(newPwd, id);
	}
	
	@Override
	public Product detailProduct(int product_id) {
		Product selectOne = productDAO.select(product_id);
		
		return selectOne;
	}
	
}
