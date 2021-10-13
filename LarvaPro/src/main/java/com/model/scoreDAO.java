package com.model;

public class scoreDAO extends DBconnection {
	
	public int insertScore(scoreVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into score values(post_comment_number.nextval,?,?,?,?)");
			
			psmt.setInt(1, vo.getCntNum());
			psmt.setString(2, vo.getMemId());
			psmt.setString(3, vo.getScReceiveId());
			psmt.setInt(4, vo.getScReceive());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
}
