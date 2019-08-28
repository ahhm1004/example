package com.shoppingmall.member.model;

import java.util.List;
import java.util.Map;

public interface MemberDAO {
	public void insert(Member member);

	public List selectId(Member member);

	public int checkLogin(Member member);

	public Member selectOne(String id);
	
	public List selectAll();
	
	public int delete(int member_id);
	
	public Member viewMember(String member_id);
	
	public void memberModify(Member member);
	
	public List<Member> findId(Member member);
		
	public void changePwd(String newPwd, String id);

}
