package com.shoppingmall.admin.model;

import java.util.List;

public interface NoticeDAO {
	
	public List selectAll();
	
	public Notice selectOne(int notice_id);
	
	public void insert(Notice notice);
	
	public void delete(int notice_id);
	
	public void update(Notice notice);
	
	public void updateHit(int notice_id);
}
