package com.model;

public class postcommentDAO extends DBconnection {
	
	//댓글 입력
	public int insertPostComment(postcommentVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			//모집게시판 번호 조건 => 공모전 번호? 작성자 id? - 애매..
			psmt = conn.prepareStatement("insert into post_comment values(post_comment_number.nextval,(select rp_num from recruit_post where cnt_num=?),?,?,sysdate)");
			
			psmt.setInt(1, vo.getPcCntNum());
			psmt.setString(2, vo.getPcMemId());
			psmt.setString(3, vo.getPcContent());
			psmt.setString(4, vo.getPcDate());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//댓글 삭제
	public int deletePostComment(String pcNum) {
			
		int cnt = 0;
			
		try {
			
			getConnection();
				
			psmt = conn.prepareStatement("delete from post_comment where pc_num=?");
				
			psmt.setString(1, pcNum);
				
			cnt = psmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
}
