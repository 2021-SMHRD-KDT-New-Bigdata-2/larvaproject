package com.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class memberDAO {
	
	//JDBC���� �޼ҵ�		 
		public Connection getConnection() {
		 
		   Connection conn=null;
		   
		   String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		   String id = "campus_k3_1006";
		   String pw = "smhrd3";
		   
		   try {
		       Class.forName("oracle.jdbc.driver.OracleDriver");
		       conn = DriverManager.getConnection(url, id, pw);
		   } catch (Exception e) {
		       System.out.println("���ӽ���");
			   e.printStackTrace();
		   }
		   return conn;
		}
		
		//ȸ������ �޼ҵ�
		public int join(memberVO member) {

			Connection conn=getConnection();
			PreparedStatement psmt=null;
			int cnt=0;
			
			try {
				psmt=conn.prepareStatement("insert into member_info values(?,?,?,?,?,?,?,?)");
				psmt.setString(1, member.getMemId());
				psmt.setString(2, member.getMemPw());
				psmt.setString(3, member.getMemUserName());
				psmt.setString(4, member.getMemNickName());
				psmt.setString(5, member.getMemEmail());
				psmt.setString(6, member.getMemTel());
				psmt.setString(7, member.getMemAdress());
				
				//sql�� ���� ��¥�� ���ϱ�
				Calendar cal=new GregorianCalendar();
				Date nowDate=new Date(cal.getTimeInMillis());
				
				psmt.setDate(8, nowDate);
						
				cnt=psmt.executeUpdate();
						
			}catch(Exception e){
				System.out.println("ȸ������ ����");
				e.printStackTrace();
			}finally {
				try {
					if (conn!=null) {
						conn.close();
					}
					if (psmt!=null) {
						psmt.close();
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return cnt;
		}
		
		//�α��� �޼ҵ�
		public int login(String id, String pw) {
				
				Connection conn=getConnection();
				PreparedStatement psmt=null;
				ResultSet rs=null;
				int cnt=0;
				
				try {
					psmt=conn.prepareStatement("select * from member_info where mem_id = ? and mem_pw = ?");
					psmt.setString(1, id);
					psmt.setString(2, pw);
					
					rs=psmt.executeQuery();
					System.out.println(rs);
					if (rs!=null) {
						cnt=1;
					}
					
				}catch (Exception e) {
				}finally {
					try {
						if (rs!=null) {
							rs.close();
						}
						psmt.close();
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					
				}
				return cnt;
				
		}
}

