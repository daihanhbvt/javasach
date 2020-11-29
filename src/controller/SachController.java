package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import bean.LoaiBean;
import bean.SachBean;
import bo.LoaiBO;
import bo.SachBO;

/**
 * Servlet implementation class SachController
 */
@WebServlet("/SachController")
public class SachController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SachController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			if (request.getCharacterEncoding() == null ) request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			SachBO sbo = new SachBO();
			ArrayList<SachBean> dssach = sbo.getAllSach();
			// lấy sách theo mã loại
			String maLoai = request.getParameter("maloai");
			if (maLoai != null) {
				dssach = sbo.TimMa(maLoai);

			}

			// lấy sách theo search
			String key = request.getParameter("key");
			if (key != null) {
				dssach = sbo.TimSach(key);
			}

			// lấy tất cả loại
			LoaiBO loaiBO = new LoaiBO();
			ArrayList<LoaiBean> dsloai = loaiBO.getAllLoai();

			// đem về web htsach
			request.setAttribute("dssach", dssach);
			request.setAttribute("dsloai", dsloai);

			RequestDispatcher rd = request.getRequestDispatcher("htsach.jsp");
			rd.forward(request, response);
			

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
