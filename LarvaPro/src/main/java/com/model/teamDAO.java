package com.model;

import java.util.ArrayList;

public class teamDAO extends DBconnection{

	//ÆÀ »ý¼º
	public int createTeam(teamVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into group_head values(group_head_number.nextval,?)");
			
			psmt.setString(1, vo.getGhMemId());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//ÆÀ Âü°¡
	public int joinTeam(teamVO vo) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("insert into group_head values(group_mem_number.nextval,?)");
			
			psmt.setString(1, vo.getGmMemId());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//ÆÀ ÇØÁ¦
	public int disbandTeam(String num, String memId) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("delete from group_head where gh_num=?,mem_id=?");
			
			psmt.setString(1, num);
			psmt.setString(2, memId);
			
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	//ÆÀ ³»º¸³»±â, ÆÀ ³ª°¡±â
	public int leaveTeam(String num, String memId) {
		
		int cnt = 0;
		
		try {
			
			getConnection();
			
			psmt = conn.prepareStatement("delete from group_mem where gh_num=?,mem_id=?");
			
			psmt.setString(1, num);
			psmt.setString(2, memId);
			
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	//ÆÀ¿ø Á¶È¸
	public ArrayList<teamVO> showTeamMember(String num) {
		
		ArrayList<teamVO> teamMem_list = new ArrayList<teamVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select gh.gh_num as num, gh.mem_id as head, gm.mem_id as member from group_head gh, group_mem gm where gh.gh_num = gm.gh_num and gm.gh_num=?");
			
			psmt.setString(1, num);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int ghnum = rs.getInt("gh.gh_num");
				String ghMemId = rs.getString("gh.mem_id");
				String gmMemId = rs.getString("gm.mem_id");
				
				teamVO vo = new teamVO(ghnum, ghMemId, gmMemId);
				teamMem_list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return teamMem_list;
	}
}

