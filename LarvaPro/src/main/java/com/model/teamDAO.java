package com.model;

import java.util.ArrayList;

public class teamDAO extends DBconnection {

	// �� ����
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

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	/*
	 * // ��� �� ���� ��ȸ(�������������� ������ ��) public ArrayList<teamVO> showAllTeam() {
	 * 
	 * ArrayList<teamVO> teamMemNum_list = new ArrayList<teamVO>();
	 * 
	 * try { getConnection();
	 * 
	 * psmt = conn.prepareStatement("select * from team_member"); rs =
	 * psmt.executeQuery();
	 * 
	 * while (rs.next()) { String mem_id = rs.getString("mem_id"); int
	 * cnt_num=rs.getInt("cnt_num"); int tm_num=rs.getInt("tm_num"); int
	 * tm_type=rs.getInt("tm_type");
	 * 
	 * teamVO vo = new teamVO(mem_id,cnt_num,tm_num,tm_type);
	 * teamMemNum_list.add(vo); }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { dbClose(); } return
	 * teamMemNum_list; }
	 */

	// ���� �̸� ��ȸ(�Խ��ǿ��� ����� ��)
	public ArrayList<teamVO> showTeamMemberId(int cnt_num, int tm_num) {

		ArrayList<teamVO> teamMemNum_list = new ArrayList<teamVO>();

		try {
			getConnection();

			psmt = conn.prepareStatement("select distinct mem_id from team_member cnt_num=? and tm_num=?");

			psmt.setInt(1, tm_num);
			psmt.setInt(2, cnt_num);

			rs = psmt.executeQuery();

			while (rs.next()) {
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

	// ���� �� ��ȸ
	public ArrayList<teamVO> showTeamMemberNum(int cnt_num, int tm_num) {

		ArrayList<teamVO> teamMemNum_list = new ArrayList<teamVO>();

		try {
			getConnection();

			psmt = conn.prepareStatement("select count(distinct mem_id) from team_member where tm_num=?");

			psmt.setInt(1, cnt_num);
			psmt.setInt(2, tm_num);

			rs = psmt.executeQuery();

			while (rs.next()) {
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

	// �� ���� ȣ�� (���������� �Ű������� �ش��ϴ� ��� �� ���� ȣ��)
	public ArrayList<teamVO> selectMyTeam(String memId) {

		ArrayList<teamVO> teamMemId_list = new ArrayList<teamVO>();

		try {
			getConnection();

			psmt = conn.prepareStatement("select * from team_member where mem_id=?");

			psmt.setString(1, memId);

			rs = psmt.executeQuery();

			while (rs.next()) {

				String mem_Id = rs.getString("mem_id");
				int cnt_Num = rs.getInt("cnt_num");
				int tm_Num = rs.getInt("tm_num");
				int tm_Type = rs.getInt("tm_type");
				String position = rs.getString("position");
				int tm_full = rs.getInt("tm_full");

				teamVO vo = new teamVO(mem_Id, cnt_Num, tm_Num, tm_Type, position, tm_full);
				teamMemId_list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return teamMemId_list;
	}

	// ���� ��� �� ���� �˾ƺ���
	public int maxTeam() {

		int maxTeam = 0;
		getConnection();

		try {
			psmt = conn.prepareStatement("SELECT tm_num, MAX(tm_num) FROM team_member GROUP BY tm_num");
			rs = psmt.executeQuery();

			while (rs.next()) {
				maxTeam = rs.getInt("tm_num");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return maxTeam;
	}
}
