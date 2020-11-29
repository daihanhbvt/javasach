package bo;

import java.util.ArrayList;

import bean.SachBean;
import dao.SachDAO;

public class SachBO {
	SachDAO sdao = new SachDAO();
	ArrayList<SachBean> ds;

	public ArrayList<SachBean> getAllSach() throws Exception {
		ds = sdao.getAllSach();
		return ds;

	}

	public ArrayList<SachBean> TimMa(String maLoai) {
		ArrayList<SachBean> tam = new ArrayList<SachBean>();

		for (SachBean s : ds) {
			if (s.getMaLoai().equalsIgnoreCase(maLoai))
				tam.add(s);
		}

		return tam;
	}

	public ArrayList<SachBean> TimSach(String key) {
		ArrayList<SachBean> tam = new ArrayList<SachBean>();
		for (SachBean s : ds) {
			if (s.getTenSach().toLowerCase().contains(key.toLowerCase())
					|| s.getMaLoai().toLowerCase().contains(key.toLowerCase()))
				tam.add(s);
		}
		return tam;
	}
}

// public class sachbo {
//	   sachdao sdao= new sachdao();
//	   ArrayList<sachbean> ds;
//	   public ArrayList<sachbean> getsach() throws Exception{
//		   
//		   ds =sdao.getsach();
//		   return ds;
//	   }
//	   public ArrayList<sachbean> TimMa(String maloai){
//		   ArrayList<sachbean> tam= new ArrayList<sachbean>();
//		   for(sachbean s:ds) {
//			   if(s.getLoai().equalsIgnoreCase(maloai))
//				   tam.add(s);
//		   }
//		   return tam;
//	   }
//	   public ArrayList<sachbean> TimSach(String key){
//		   ArrayList<sachbean> tam= new ArrayList<sachbean>();
//		   for(sachbean s:ds) {
//			   if(s.getTensach().toLowerCase().contains(key.toLowerCase())
//					   ||s.getLoai().toLowerCase().contains(key.toLowerCase()) )
//				   tam.add(s);
//		   }
//		   return tam;
//	   }
//}