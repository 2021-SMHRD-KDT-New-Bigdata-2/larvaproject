package com.model;

import java.util.ArrayList;

public class conDetailDAO extends DBconnection{
	//  공모전 상세내용, 삽입.
	public int insertConDetail(conDetailVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into contest values(contest_number.nextval,?,?,?,?,?,?,?,?,?,?)");
			
			
			psmt.setString(1, vo.getConName());
			psmt.setString(2, vo.getConHost());
			psmt.setString(3, vo.getConField());
			psmt.setString(4, vo.getConQualfication());
			psmt.setString(5, vo.getConFromDate());
			psmt.setString(6, vo.getConToDate());
			psmt.setString(7, vo.getConHomePage());
			psmt.setString(8, vo.getConPostBig());
			psmt.setString(9, vo.getConPostSmall());
			psmt.setString(10, vo.getConContent());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	//공모전 상세내용. 수정
	public int updateConDetail(String conName, String conHost, String conField,String conQualfication, String conFromDate, String conTodate, String conHomePage, String conPostBig, String conPostSmall, String conContent) {
			
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("update contest set cnt_name=?, cnt_host=?, cnt_field=?, cnt_qualification=?, cnt_from_date=?, cnt_to_date=?, cnt_homepage=?, cnt_img_big=?, cnt_img_small=?,cnt_content=?");
			
			
			
			psmt.setString(1, conName );
			psmt.setString(2,conHost );
			psmt.setString(3, conField);
			psmt.setString(4,conQualfication );
			psmt.setString(5,conFromDate );
			psmt.setString(6, conTodate);
			psmt.setString(7,conHomePage );
			psmt.setString(8,conPostBig );
			psmt.setString(9, conPostSmall);
			psmt.setString(10,conContent );
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	//게시판 삭제
	public int deleteContest(String cntNum) {
	
		int cnt = 0;
		
		try {
		
			getConnection();
			
			psmt = conn.prepareStatement("delete from contest where cnt_num=?");
			
			psmt.setString(1, cntNum);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	
		public ArrayList<conDetailVO> showConDetail(conDetailVO vo) {
			
			ArrayList<conDetailVO> showConDetail_list = new ArrayList<conDetailVO>();
			
			try {
				
				getConnection();
				
				psmt = conn.prepareStatement("select cnt_name, cnt_from_date, cnt_to_date from contest");
				
				rs=psmt.executeQuery();
				
				while(rs.next()) {
					String conName = rs.getString("cnt_name");
					String conFromDate = rs.getString("cnt_from_date");
					String conToDate = rs.getString("cnt_to_date");
					
					conDetailVO vo2 = new conDetailVO(conName, conFromDate, conToDate);
					showConDetail_list.add(vo2);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbClose();
			}
			return showConDetail_list;
	}
}






