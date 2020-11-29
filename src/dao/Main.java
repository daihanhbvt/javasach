package dao;

import java.util.ArrayList;

import bean.SachBean;

public class Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		SachDAO sachDao = new SachDAO();
		
		ArrayList<SachBean> ds =sachDao.getAllSach();
		
		System.out.println(ds.get(7).getTenSach());

	}

}
