package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import bean.KhachHangBean;

public class KhachHangDAO {

	public KhachHangBean getThanhVien(String maKhachHang, String matKhau) throws Exception {
		KhachHangBean kh = null;
		
		DungChung dungChung = new DungChung();
		dungChung.KetNoi();
		
		String query = "select * from khachhang where makh = '" + maKhachHang + "' and pass = '" + matKhau + "'";	
		System.out.println(query);
		
		PreparedStatement command = dungChung.cn.prepareStatement(query);
		ResultSet rs = command.executeQuery();
		
		while (rs.next()) {
			String hoTen = rs.getString("hoten");
			String diaChi = rs.getString("diachi");
			String soDienThoai = rs.getString("sodt");	
			
			kh = new KhachHangBean(maKhachHang, hoTen, diaChi, soDienThoai, matKhau);
		}
		rs.close();
		dungChung.cn.close();

		return kh;

	}

}
