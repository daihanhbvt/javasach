package bo;

import bean.KhachHangBean;
import dao.KhachHangDAO;

public class KhachHangBO {
	KhachHangDAO khachHangDAO = new KhachHangDAO();
	
	public KhachHangBean getThanhVien(String maKhachHang, String matKhau) throws Exception{
		return khachHangDAO.getThanhVien(maKhachHang, matKhau);
	}

}
