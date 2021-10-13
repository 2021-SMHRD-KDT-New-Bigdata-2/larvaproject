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
		public memberVO login(String id, String pw) {
				
				getConnection();
				memberVO memberInfo=null;
				String memId=null;
				String memPw=null;
				String memUserName=null;
				String memNickName=null;
				String memEmail=null;
				String memTel=null;
				String memAdress=null;
				String memDate=null;
				
				try {
					psmt=conn.prepareStatement("select * from member_info where mem_id = ? and mem_pw = ?");
					psmt.setString(1, id);
					psmt.setString(2, pw);
					rs=psmt.executeQuery();
					
					if(rs.next()) {
						memId=rs.getString(2);
						memPw=rs.getString(3);
						memUserName=rs.getString(4);
						memNickName=rs.getString(5);
						memEmail=rs.getString(6);
						memTel=rs.getString(7);
						memAdress=rs.getString(8);
						memDate=rs.getString(9);
					}
				}catch (Exception e) {
					return memberInfo;
				}finally {
					try {
						dbClose();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				memberInfo=new memberVO(memId,memPw,memUserName,memNickName,memEmail,memTel,memAdress,memDate);
				return memberInfo;
				
		}
}

