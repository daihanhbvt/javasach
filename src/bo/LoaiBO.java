package bo;

import java.util.ArrayList;

import bean.LoaiBean;
import dao.LoaiDAO;

public class LoaiBO {
	
	public ArrayList<LoaiBean> ds;
	LoaiDAO ldao= new LoaiDAO();
	public ArrayList<LoaiBean> getAllLoai() throws Exception{
		ds = ldao.getAllLoai();
		return ds;
	}

}


//package bo;
//
//import java.util.ArrayList;
//
//import bean.loaibean;
//import dao.loaidao;
//
//public class loaibo {
//	public ArrayList<loaibean> ds;
//	loaidao ldao= new loaidao();
//	public ArrayList<loaibean> getLoai() throws Exception {
//		ds = ldao.getloai();
//		return ds;
//	}
//}