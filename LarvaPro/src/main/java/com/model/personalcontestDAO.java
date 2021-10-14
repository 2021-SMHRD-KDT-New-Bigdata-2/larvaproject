package com.model;

public class personalcontestDAO extends DBconnection{
	
	//개인 공모전 내역 입력
	public int insertPersonalConetest(personalcontestVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into personal_contest values(personal_contest_number.nextval,?,?,?,?,?)");
			
			psmt.setString(1, vo.getMemId());
			psmt.setInt(2, vo.getCntNum());
			psmt.setString(3, vo.getPcntPosition());
			psmt.setString(4, vo.getPcntContent());
			psmt.setInt(5, vo.getPcntType());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//개인 공모전 내역 수정
	public int updatePersonalContest(String cntNum, String position, String content, String type, String pcNum) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("update personal_contest set cnt_num=?, pcnt_position=?, pcnt_content=?, pcnt_type=? where pcnt_num=?)");
			
			psmt.setString(1, cntNum);
			psmt.setString(2, position);
			psmt.setString(3, content);
			psmt.setString(4, type);
			psmt.setString(5, pcNum);
			
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//개인 공모전 내역 삭제
	public int deletePersonalConetest(String pcntNum) {
			
		int cnt = 0;
			
		try {
			
			getConnection();
				
			psmt = conn.prepareStatement("delete from personal_contest where pcnt_num=?");
				
			psmt.setString(1, pcntNum);
				
			cnt = psmt.executeUpdate();
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
}
