package com.shoppingmall.member.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingmall.product.model.Product;

import common.exception.DidNotCheckLoginException;

@Repository
public class MybatisMemberDAO implements MemberDAO {
	String tag = this.getClass().getName();

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insert(Member member) {
		// TODO Auto-generated method stub

		int result = sqlSessionTemplate.insert("Member.insert", member);

	}

	@Override
	public List selectId(Member member) {

		List list = sqlSessionTemplate.selectList("Member.selectId", member);

		if (list.size() != 0) {
			throw new DidNotCheckLoginException("이미 아이디가 있습니다!");
		}
		return list;
	}

	@Override
	public int checkLogin(Member member) throws DidNotCheckLoginException {

		List list = sqlSessionTemplate.selectList("Member.checkLogin", member);
		System.out.println(list);
		if (list.size() == 0) {
			throw new DidNotCheckLoginException("로그인 아이디 비밀번호를 확인하세요");
		}else{
			Member getMember=(Member)list.get(0);
			member.setId(getMember.getId());
		}

		return 0;
	}

	@Override
	public Member selectOne(String id) {
		System.out.println("id="+id);
		Member member=sqlSessionTemplate.selectOne("Member.selectOne", id);
		return member;
	}

	@Override
	public List selectAll() {
		
		List list = sqlSessionTemplate.selectList("Member.selectAll");
		
		return list;
	}
	
	@Override
	public int delete(int member_id) {
		
		sqlSessionTemplate.delete("Member.delete",member_id);
		
		return 0;
	}
	
	@Override
	public Member viewMember(String member_id)
	{
		return sqlSessionTemplate.selectOne("Member.view", member_id);
		
	}
	
	@Override
	public void memberModify(Member member) {
		sqlSessionTemplate.update("Member.update", member);		
	}
	
	@Override
	public List<Member> findId(Member member){

		return sqlSessionTemplate.selectList("Member.findId" , member);

	}
	
	@Override
	public void changePwd(String newPwd, String id)
	{
		Member member = new Member();
		member.setPwd(newPwd);
		member.setId(id);
		
		System.out.println("1." + newPwd + " 2." + id);
		System.out.println("\n3." + member.getPwd() + " 4." + member.getId());
		
		sqlSessionTemplate.update("Member.changePwd", member);
	}

}
