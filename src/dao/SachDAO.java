package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.SachBean;

public class SachDAO {
	public ArrayList<SachBean> getAllSach() throws Exception{
		ArrayList<SachBean> ds= new ArrayList<SachBean>();
		//b1 Ket noi vao csdl
		
		
		DungChung dc= new DungChung();
		dc.KetNoi();
		 //b2: Thiet lap cau lenh sql
	    String sql="select * from sach";
	    
	    //b3: cho thuc hienj cau lenh sql
	    PreparedStatement cmd=dc.cn.prepareStatement(sql);
	    ResultSet rs= cmd.executeQuery();
	    //b4: Duyet qua cac loai va luu vao ds
	    
	    while (rs.next()) {
	    	String maSach= rs.getString("masach");
	    	String tenSach = rs.getString("tensach");
	    	String tacGia = rs.getString("tacgia");
	    	long gia = rs.getLong("gia");
	    	String anh = rs.getString("anh");
	    	String maLoai = rs.getString("maloai");
	    	
	    	ds.add (new SachBean(maSach, tenSach, tacGia,gia, anh, maLoai));
	    	
	    }
		
	    rs.close(); 
	    dc.cn.close();
		return ds;
		
		
	}

}
