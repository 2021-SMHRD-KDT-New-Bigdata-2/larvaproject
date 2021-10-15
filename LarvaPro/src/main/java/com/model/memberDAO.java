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
		
		//로그인 메소드(score)
		public scoreVO score(String id) {
				
				getConnection();
				scoreVO memberScore=null;
				
				int cntNum=0;
				String memId=null;
				String scReceiveId=null;
				int scReceive=0;
				
				try {
					psmt=conn.prepareStatement("select * from score where mem_id = ?");
					psmt.setString(1, id);
					rs=psmt.executeQuery();
					
					if(rs.next()) {
						cntNum=rs.getInt(2);
						memId=rs.getString(3);
						scReceiveId=rs.getString(4);
						scReceive=rs.getInt(5);
					}
				}catch (Exception e) {
					return memberScore;
				}finally {
					try {
						dbClose();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				memberScore=new scoreVO(cntNum,memId,scReceiveId,scReceive);
				return memberScore;
				
		}
				
		//로그인 메소드(PersonalContest)
		public personalcontestVO PC(String id) {
				
				getConnection();
				personalcontestVO PC=null;
				
				int pcntNum=0;
				String memId=null;
				int cntNum=0;
				String pcntPosition=null;
				String pcntContent=null;
				int pcntType=0;
				
				try {
					psmt=conn.prepareStatement("select * from personal_contest where mem_id = ?");
					psmt.setString(1, id);
					rs=psmt.executeQuery();
					
					if(rs.next()) {
						pcntNum=rs.getInt(1);
						memId=rs.getString(2);
						cntNum=rs.getInt(3);
						pcntPosition=rs.getString(4);
						pcntContent=rs.getString(5);
						pcntType=rs.getInt(6);
					}
				}catch (Exception e) {
					return PC;
				}finally {
					try {
						dbClose();
					} catch (Exception e) {
						e.printStackTrace();
					}
					
				}
				PC=new personalcontestVO(pcntNum,memId,cntNum,pcntPosition,pcntContent,pcntType);
				return PC;
				
		}
}

