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
	
	//게시글 표현 메소드
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
	
	//특정 공모전 불러오기
			public conDetailVO selectCon(int num) {
				
				getConnection();
				conDetailVO contest=null;
				
				int cnt=0;
				String name=null;
				String host=null;
				String filed=null;
				String qualfication=null;
				String fromDate=null;
				String toDate=null;
				String homepage=null;
				String imgSmall=null;
				String imgBig=null;
				String content=null;
				
				int cnt_num=num;
				
				try {
					psmt=conn.prepareStatement("select * from contest where cnt_num = ?");
					psmt.setInt(1, cnt_num);
					rs=psmt.executeQuery();
										
						cnt=rs.getInt(1);
						name=rs.getString(2);
						host=rs.getString(3);
						filed=rs.getString(4);
						qualfication=rs.getString(5);
						fromDate=rs.getString(6);
						toDate=rs.getString(7);
						homepage=rs.getString(8);
						imgSmall=rs.getString(9);
						imgBig=rs.getString(10);
						content=rs.getString(11);

				}catch (Exception e) {
				}finally {
					try {
						dbClose();
					} catch (Exception e) {
						e.printStackTrace();
					}			
				}
				contest=new conDetailVO(cnt, name, host, filed, qualfication, fromDate, toDate, homepage, imgSmall, imgBig, content);
				return contest;

			}
}






