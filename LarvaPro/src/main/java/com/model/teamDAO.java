package com.model;

import java.util.ArrayList;

public class teamDAO extends DBconnection{

	//팀 생성
	public int createTeam(teamVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into team_member values(?,?,?,?)");
			
			psmt.setString(1, vo.getMemId());
			psmt.setInt(2, vo.getCntNum());
			psmt.setInt(3, vo.getTmNum());
			psmt.setInt(4, vo.getTmType());
			
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//팀원 이름 조회
	public ArrayList<teamVO> showTeamMemberId(int cnt_num,int tm_num) {
		
		ArrayList<teamVO> teamMemNum_list = new ArrayList<teamVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select distinct mem_id from team_member where cnt_num=? and tm_num=?");
			
			psmt.setInt(1, cnt_num);
			psmt.setInt(2, tm_num);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				String ghMemId = rs.getString("mem_id");
				
				teamVO vo = new teamVO(ghMemId);
				teamMemNum_list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return teamMemNum_list;
	}
	//팀원 수 조회
	public ArrayList<teamVO> showTeamMemberNum(int cnt_num,int tm_num) {
		
		ArrayList<teamVO> teamMemNum_list = new ArrayList<teamVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select count(distinct mem_id) from team_member where tm_num=?");
			
			psmt.setInt(1, cnt_num);
			psmt.setInt(2, tm_num);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				String ghMemId = rs.getString("mem_id");
				
				teamVO vo = new teamVO(ghMemId);
				teamMemNum_list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return teamMemNum_list;
	}
	//그룹 번호
	public ArrayList<teamVO> searchTeamNum(String memId) {
		
		ArrayList<teamVO> teamMemId_list = new ArrayList<teamVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select tm_num from team_member where mem_id=?");
			
			psmt.setString(1, memId);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				String tmMemId = rs.getString("mem_id");
				int tmNum = rs.getInt("tm_num");
				
				teamVO vo = new teamVO(tmMemId, tmNum);
				teamMemId_list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return teamMemId_list;
	}
}

