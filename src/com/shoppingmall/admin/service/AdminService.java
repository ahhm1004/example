package com.shoppingmall.admin.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shoppingmall.admin.model.Admin;
import com.shoppingmall.admin.model.Notice;
import com.shoppingmall.member.model.Member;
import com.shoppingmall.product.model.Product;

public interface AdminService {
	// �α���
	public void login(Admin admin, HttpSession session);
	
	// �α׾ƿ�
	public void logout(HttpSession session);
	
	// ��ǰ��� ������ �ڷ� ��������
	public Map registProduct();
	
	// ��ǰ����ϱ�
	public void insert(Product product, String[] panelsize_id, HttpServletRequest request);
	
	public List getSubCategory(int topCategory_id);
	
	// ��ǰ ����Ʈ ��������
	public List<Product> selectAll(String keyword);
	//public List selectAll();
		
	// �̺�Ʈ �̸� ����Ʈ ��������
	public List eventAll();
	
	// ��ǰ �����ϱ�
	public void productDelete(String[] product_id, String[] filename, HttpServletRequest request);
	
	// �̺�Ʈ ���
	public void eventRegist(String[] product_id, String eventinfo_id);
	
	// �̺�Ʈ ����
	public List eventSelect(int eventinfo_id);
	
	// �̺�Ʈ ����
	public void eventDelete(String[] product_id, int eventinfo_id);
	
	// �̺�Ʈ �ߺ��˻�
	public List duplicateEvent(String[] product_id, int eventinfo_id);
	
	// ��ü ��� �ҷ�����!!
	public List allMember();
	
	// �������� �Է��ϱ�
	public void noticeWrite(Notice notice);
	
	// �������� �����ϱ�
	public void noticeUpdate(Notice notice);
	
	// �������� ��ü ��������
	public List noticeAll();
		
	// �������� �Ѱ� ��������
	public Notice noticeOne(int notice_id);
	
	// �������� �����ϱ�
	public void noticeDelete(int notice_id);
	
	// ��ǰ ���� ����
	public void productModify(Product product, String[] panelsize_id, HttpServletRequest request);
	
	// ��ǰ �� ����
	public Product viewProduct(String product_id);
	
	// ȸ�� ����Ʈ ��������
	public List selectAll2();
	
	// ȸ�� ���� �����ϱ�
	public void memberDelete(String[] member_id);
	
	// ȸ�� �� ����
	public Member viewMember(String member_id);
	
	// ȸ�� ���� ����
	public void memberModify(Member member, HttpServletRequest request);
	
	//public List<Product> listAll(String keyword) throws Exception;
	
	public int countArticle(String keyword) throws Exception;
	
	
}
