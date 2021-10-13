package com.model;

public class memberDAO extends DBconnection {
		
		//회원가입 메소드
		public int join(memberVO member) {

			getConnection();
			
			int cnt=0;
			
			try {
				
				psmt=conn.prepareStatement("insert into member_info values(?,?,?,?,?,?,?,sysdate)");
				psmt.setString(1, member.getMemId());
				psmt.setString(2, member.getMemPw());
				psmt.setString(3, member.getMemUserName());
				psmt.setString(4, member.getMemNickName());
				psmt.setString(5, member.getMemEmail());
				psmt.setString(6, member.getMemTel());
				psmt.setString(7, member.getMemAdress());
						
				cnt=psmt.executeUpdate();
						
			}catch(Exception e){
				System.out.println("회원가입 실패");
				e.printStackTrace();
			}finally {
				try {
					dbClose();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return cnt;
		}
		
		//로그인 메소드
		public int login(String id, String pw) {
				
				getConnection();
				
				int cnt=0;
				
				try {
					psmt=conn.prepareStatement("select * from member_info where mem_id = ? and mem_pw = ?");
					psmt.setString(1, id);
					psmt.setString(2, pw);
					
					rs=psmt.executeQuery();
					if (rs.next()) {
						cnt=1;
					}
					
				}catch (Exception e) {
				}finally {
					try {
						dbClose();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				return cnt;
				
		}
}

