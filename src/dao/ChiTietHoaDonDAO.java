package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean.ChiTietHoaDonBean;
import bean.HoaDonBean;

public class ChiTietHoaDonDAO {
	
	public ArrayList<ChiTietHoaDonDAO> getAllChiTietHoaDon() throws Exception{
		ArrayList<ChiTietHoaDonDAO> cthd= new ArrayList<ChiTietHoaDonDAO>();
		//b1 Ket noi vao csdl
		
		
		DungChung dc= new DungChung();
		dc.KetNoi();
		 //b2: Thiet lap cau lenh sql
	    String sql="select *  from ChiTietHoaDon";
	    
	    //b3: cho thuc hienj cau lenh sql
	    PreparedStatement cmd=dc.cn.prepareStatement(sql);
	    ResultSet rs= cmd.executeQuery();
	    //b4: Duyet qua cac loai va luu vao ds
	    
	    while (rs.next()) {
	    	String maChiTietHoaDon= rs.getString("MaChiTietHD");
	    	String maSach = rs.getString("MaSach");
	    	long soLuongMua = rs.getLong("SoLuongMua");
	    	 String maHoaDon = rs.getString("Ma");
	    	
	    	cthd = new ChiTietHoaDonBean(maChiTietHoaDon, maSach, soLuongMua,maHoaDon);
	    }
		
	    rs.close(); 
	    dc.cn.close();
		return cthd;
		
		
	}

}
