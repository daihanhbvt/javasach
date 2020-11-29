package bean;

import java.sql.Date;

public class HoaDonBean {
	private String maHoaDon;
	private long maKH;
	private Date ngayMua;
	private boolean daMua;
	public HoaDonBean(String maHoaDon, long maKH, Date ngayMua, boolean daMua) {
		super();
		this.maHoaDon = maHoaDon;
		this.maKH = maKH;
		this.ngayMua = ngayMua;
		this.daMua = daMua;
	}
	public String getMaHoaDon() {
		return maHoaDon;
	}
	public void setMaHoaDon(String maHoaDon) {
		this.maHoaDon = maHoaDon;
	}
	public long getMaKH() {
		return maKH;
	}
	public void setMaKH(long maKH) {
		this.maKH = maKH;
	}
	public Date getNgayMua() {
		return ngayMua;
	}
	public void setNgayMua(Date ngayMua) {
		this.ngayMua = ngayMua;
	}
	public boolean isDaMua() {
		return daMua;
	}
	public void setDaMua(boolean daMua) {
		this.daMua = daMua;
	}
	
	
	
	
	
	
	

}
