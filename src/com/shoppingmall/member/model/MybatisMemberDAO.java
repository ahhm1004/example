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
		System.out.println(tag + "���̹�Ƽ��" + result);

	}

	@Override
	public List selectId(Member member) {

		List list = sqlSessionTemplate.selectList("Member.selectId", member);

		if (list.size() != 0) {
			throw new DidNotCheckLoginException("�̹� ���̵� �ֽ��ϴ�!");
		}
		return list;
	}

	@Override
	public int checkLogin(Member member) throws DidNotCheckLoginException {

		List list = sqlSessionTemplate.selectList("Member.checkLogin", member);
		System.out.println(list);
		System.out.println(tag + "000"+list.size());
		if (list.size() == 0) {
			throw new DidNotCheckLoginException("�α��� ���̵� ��й�ȣ�� Ȯ���ϼ���");
		}else{
			Member getMember=(Member)list.get(0);
			member.setId(getMember.getId());
		}

		return 0;
	}

	//��������������
	@Override
	public Member selectOne(String id) {
		System.out.println("id="+id);
		/*Member member=(Member)sqlSessionTemplate.selectMap("Member.selectOne", member1);*/
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
