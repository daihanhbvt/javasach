package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.HoaDonBean;

public class HoaDonDAO {
	public HoaDonBean getHoaDon(String maHoaDon, String maKH, Date ngayMua, Boolean daMua) throws Exception {
		HoaDonBean hd = null;

		DungChung dungChung = new DungChung();
		dungChung.KetNoi();

		String query = "select max(MaHoaDon)+1 from hoadon";
		System.out.println(query);

		PreparedStatement command = dungChung.cn.prepareStatement(query);
		ResultSet rs = command.executeQuery();

		while (rs.next()) {
			String maHoaDon = rs.getString("MaHoaDon");
			long maKH = rs.getLong("makh");
			String tacGia = rs.getString("tacgia");
			Date ngayMua = rs.getDate("NgayMua");
			boolean daMua = rs.getBoolean("damua");

			hd = new HoaDonBean(maHoaDon, maKH, ngayMua, daMua);
		}
		rs.close();
		dungChung.cn.close();

		return hd;

	}
}
