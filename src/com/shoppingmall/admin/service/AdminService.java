package com.shoppingmall.admin.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shoppingmall.admin.model.Admin;
import com.shoppingmall.admin.model.Notice;
import com.shoppingmall.member.model.Member;
import com.shoppingmall.product.model.Product;
import com.shoppingmall.product.model.ProductStock;

public interface AdminService {

	public void login(Admin admin, HttpSession session);
	
	public void logout(HttpSession session);
	
	public Map registProduct();
	
	public void insert(Product product, HttpServletRequest request);
	
	public List getSubCategory(int topCategory_id);
	
	public List<Product> selectAll(String keyword);
		
	public List eventAll();
	
	public void productDelete(String[] product_id, String[] filename, HttpServletRequest request);
	
	public void eventRegist(String[] product_id, String eventinfo_id);
	
	public List eventSelect(int eventinfo_id);
	
	public void eventDelete(String[] product_id, int eventinfo_id);
	
	public List duplicateEvent(String[] product_id, int eventinfo_id);
	
	public List allMember();
	
	public void noticeWrite(Notice notice);
	
	public void noticeUpdate(Notice notice);
	
	public List noticeAll();
		
	public Notice noticeOne(int notice_id);
	
	public void noticeDelete(int notice_id);
	
	public void productModify(Product product, HttpServletRequest request);
	
	public Product viewProduct(String product_id);
	
	public List selectAll2();
	
	public void memberDelete(String[] member_id);
	
	public Member viewMember(String member_id);
	
	public void memberModify(Member member, HttpServletRequest request);
	
	public int countArticle(String keyword) throws Exception;
	
	public Product viewProduct2(String product_id);
	
	public Product registProductStock(int product_id);
	
	public void stockInsert(int product_id, String color, int stock, String size);
	
	public List selectProductStock(int product_id);
	
	public void stockUpdate(int product_id, String color, int stock, String size);
	
	
}
