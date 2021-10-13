package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class postcommentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	//db ����
	public void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String user = "campus_k3_1006 ";
			String password = "smhrd3";
					
			//2. �����ͺ��̽� ���� ��ü(Connection) ����
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//db ���� ����
	public void dbClose() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	//��� �Է�
	public int insetPostComment(postcommentVO vo) {
		
		int cnt = 0;
		
		try {
			getConnection();
			//�����Խ��� ��ȣ ���� => ������ ��ȣ? �ۼ��� id? - �ָ�..
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
	//��� ����
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
