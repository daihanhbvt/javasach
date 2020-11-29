package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.KhachHangBean;
import bo.KhachHangBO;

/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/DangNhapController")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangNhapController() {
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
			HttpSession session = request.getSession();
			String maKhachHang = request.getParameter("makh");

			if (maKhachHang != null) {
				String matKhau = request.getParameter("matkhau");

				KhachHangBO khachHangBO = new KhachHangBO();

				KhachHangBean kh = khachHangBO.getThanhVien(maKhachHang, matKhau);

				if (kh == null) {
					RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
					rd.forward(request, response);
				} else if (session.getAttribute("kh") == null) {
					session.setAttribute("kh", kh);
					
					RequestDispatcher rd = request.getRequestDispatcher("SachController");
					rd.forward(request, response);

				}

			} else {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);

			}

		} catch (

		Exception e) {
			e.printStackTrace();
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
