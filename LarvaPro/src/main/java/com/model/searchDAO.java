package com.model;

import java.util.ArrayList;

public class searchDAO extends DBconnection{
	
	public ArrayList<conDetailVO> searchThings(String search) {
		
		getConnection();
		ArrayList<conDetailVO> searchList=new ArrayList<conDetailVO>();
		
		int conNum=0;
		String conName=null;
		String conHost=null;
		String conField=null;
		String conQualfication=null;
		String conFromDate=null;
		String conToDate=null;
		String conHomePage=null;
		String conPostBig=null;
		String conPostSmall=null;
		String conContent=null;
		
		
		try {
			psmt = conn.prepareStatement("select * from contest where cnt_name like=?");
			
			psmt.setString(1,search);
			
			rs = psmt.executeQuery();

			while (rs.next()) {
				conNum=rs.getInt("con_Num");
				conHost=rs.getString("con_Name");
				conHost=rs.getString("con_Host");
				conField=rs.getString("con_field");
				conQualfication=rs.getString("con_qualification");
				conFromDate=rs.getString("con_from_date");
				conToDate=rs.getString("con_to_date");
				conHomePage=rs.getString("con_homepage");
				conPostBig=rs.getString("con_img_small");
				conPostBig=rs.getString("con_img_big");
				conContent=rs.getString("con_content");
				
				conDetailVO vo=new conDetailVO(conNum, conName, conHost, conField, conQualfication, conFromDate, conToDate, conHomePage, conPostBig, conPostSmall, conContent);
				searchList.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}return searchList;
	}
	
	}


