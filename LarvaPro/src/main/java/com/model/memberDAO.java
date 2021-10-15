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
		
		//로그인 메소드(member_info)
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
						memId=rs.getString(1);
						memPw=rs.getString(2);
						memUserName=rs.getString(3);
						memNickName=rs.getString(4);
						memEmail=rs.getString(5);
						memTel=rs.getString(6);
						memAdress=rs.getString(7);
						memDate=rs.getString(8);
						
						memberInfo=new memberVO(memId,memPw,memUserName,memNickName,memEmail,memTel,memAdress,memDate);
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
				return memberInfo;
		}
		
}

