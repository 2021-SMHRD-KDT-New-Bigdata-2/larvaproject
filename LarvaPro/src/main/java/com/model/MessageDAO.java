package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MessageDAO {
	
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
	//�޽��� �Է�
	public int insertMessage(MessageVO vo) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			
			psmt = conn.prepareStatement("insert into message values(message_number.nextval,?,?,?,sysdate,sysdate,?)");
			
			psmt.setString(1, vo.getmSendId());
			psmt.setString(2, vo.getmReceiveId());
			psmt.setString(3, vo.getmContent());
			psmt.setInt(4, vo.getmState());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	//���� �޽��� ��ȸ
	public ArrayList<MessageVO> showSendMessage(String SendId) {
		
		ArrayList<MessageVO> message_list = new ArrayList<MessageVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select * from message where m_Send_id=?");
			
			psmt.setString(1, SendId);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int mNum = rs.getInt("mNum");
				String mSendId = rs.getString("mSendId");
				String mReceiveid = rs.getString("mReceiveId");
				String mContent = rs.getString("mContent");
				String mSendDate = rs.getString("mSendDate");
				String mReceiveDate = rs.getString("mReceiveDate");
				int mState = rs.getInt("mState");
				
				MessageVO vo = new MessageVO(mNum, mSendId, mReceiveid, mContent, mSendDate, mReceiveDate, mState);
				message_list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return message_list;
	}
	//���� �޽��� ��ȸ
	public ArrayList<MessageVO> showReceiveMessage(String ReceiveId) {
		
		ArrayList<MessageVO> message_list = new ArrayList<MessageVO>();
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select * from message where m_receive_id=?");
			
			psmt.setString(1, ReceiveId);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				int mNum = rs.getInt("mNum");
				String mSendId = rs.getString("mSendId");
				String mReceiveId = rs.getString("mReceiveId");
				String mContent = rs.getString("mContent");
				String mSendDate = rs.getString("mSendDate");
				String mReceiveDate = rs.getString("mReceiveDate");
				int mState = rs.getInt("mState");
				
				MessageVO vo = new MessageVO(mNum, mSendId, mReceiveId, mContent, mSendDate, mReceiveDate, mState);
				message_list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return message_list;
	}
	
	//�޽��� ��ü ����
	public int deleteMessage(String mReceiveId) {
		int cnt = 0;
		try {
			getConnection();
			
			psmt = conn.prepareStatement("delete from message where m_receive_id=?");
			
			psmt.setString(1, mReceiveId);
			
			cnt = psmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
	//�޽��� ���� ����
	public int deleteOne(String mNum) {
		
		int cnt = 0;
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement("delete from message where m_num=?");
			
			psmt.setString(1, mNum);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	}
