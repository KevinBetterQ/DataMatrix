package com.park.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.park.dao.ParksDao;
import com.park.dao.domain.Parks;

import com.park.utils.DbUtils;

public class ParksDaoImpl implements ParksDao{


	@Override
	public Parks getParkById(String time) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Parks park = new Parks();
		try {
			conn=DbUtils.getConnection();
			//3.操作数据库			
			String sql="select * from analysis where data=?";			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, time);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				park.setKeliu(rs.getInt("keliu"));
				park.setRudian(rs.getInt("rudian"));
				park.setNewnum(rs.getInt("newnum"));
				park.setRdlv(rs.getDouble("rdlv"));
				park.setSflv(rs.getDouble("sflv"));
				park.setTclv(rs.getDouble("tclv"));
				park.setZhlv(rs.getDouble("zhlv"));
				
			}
			
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
	    DbUtils.closeResultSet(rs);
		DbUtils.closePreparedStatement(pstmt);
		DbUtils.closeConnection(conn);
		
		}
		return park;
	}

}
