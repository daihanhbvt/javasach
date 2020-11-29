package bo;

import java.util.ArrayList;

import bean.HangBean;

public class HangBO {

	public ArrayList<HangBean> gioHang = new ArrayList<HangBean>();

	public void Them(String maSach, String tenSach, long gia, long soLuong) {
		for (HangBean hb : gioHang) {
			// kiem tra trung sach
			if (hb.getMaSach().equals(maSach)) {
				long soluongHienTai = hb.getSoLuong();
				hb.setSoLuong(soluongHienTai + 1);
				// sua ham update
				return;
			}
		}

		gioHang.add(new HangBean(maSach, tenSach, gia, soLuong));

	}

	public void Sua(String maSach, long soLuong) {
		for (HangBean hb : gioHang) {
			if (hb.getMaSach().equals(maSach)) {
				hb.setSoLuong(soLuong);
				return;
			}
		}

	}

	public void Xoa(String maSach) {
		for (HangBean hb : gioHang) {
			if (hb.getMaSach().equals(maSach)) {
				gioHang.remove(hb);

				return;
			}

		}
	}

	public long getTongTien() {
		long sum = 0;

		for (HangBean hb : gioHang) {
			sum += hb.getThanhTien();
		}

		return sum;
	}
}
