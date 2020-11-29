package bean;

public class ChiTietHoaDonBean {
	
	private String maChiTietHoaDon;
	private String maSach;
	private long soLuongMua;
	private String maHoaDon;
	public ChiTietHoaDonBean(String maChiTietHoaDon, String maSach, long soLuongMua, String maHoaDon) {
		super();
		this.maChiTietHoaDon = maChiTietHoaDon;
		this.maSach = maSach;
		this.soLuongMua = soLuongMua;
		this.maHoaDon = maHoaDon;
	}
	public String getMaChiTietHoaDon() {
		return maChiTietHoaDon;
	}
	public void setMaChiTietHoaDon(String maChiTietHoaDon) {
		this.maChiTietHoaDon = maChiTietHoaDon;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public long getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	
	
	

}
