package com.shoppingmall.member.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.shoppingmall.member.model.Member;

public interface MemberService {
	public void insert(Member member);
	
	public List selectId(Member member);
	
	public int checkLogin(Member member);
	
	public Member selectOne(String id);
	
	public ArrayList<String> findId(Member member);
	
	public void changePwd(String newPwd, String id);
}
