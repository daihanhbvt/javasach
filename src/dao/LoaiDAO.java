package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.LoaiBean;

public class LoaiDAO {
	public ArrayList<LoaiBean> getAllLoai() throws Exception{
		ArrayList<LoaiBean> ls=new ArrayList<LoaiBean>();
		
		DungChung dungChung= new DungChung();
		dungChung.KetNoi();
		
		String query = "select * from loai";
		

		
		PreparedStatement cmd = dungChung.cn.prepareStatement(query);
		ResultSet rs = cmd.executeQuery();
		
		while (rs.next()) {
			String maLoai = rs.getString("maloai");
			String tenLoai = rs.getString("tenloai");
			
			ls.add(new LoaiBean(maLoai, tenLoai));
		}
		
		rs.close();
		dungChung.cn.close();
		return ls;
	}
	

}
