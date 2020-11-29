package controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.HangBO;

/**
 * Servlet implementation class GioController
 */
@WebServlet("/GioController")
public class GioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioController() {
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
		HttpSession session = request.getSession();
		String buttonType = request.getParameter("type");

		if (buttonType != null) {
			if (session.getAttribute("giohang") == null) {
				HangBO hangBO = new HangBO();
				session.setAttribute("giohang", hangBO);
			}

			HangBO hangBO = (HangBO) session.getAttribute("giohang");

			if (buttonType.equals("buy")) {
				String maSach = request.getParameter("masach");
				String tenSach = request.getParameter("tensach");
				String soLuong = request.getParameter("soluong");
				String gia = request.getParameter("gia");

				hangBO.Them(maSach, tenSach, Long.parseLong(gia), Long.parseLong(soLuong));
			}

			if (buttonType.equals("update")) {
				String maSach = request.getParameter("masach");
				String soLuong = request.getParameter("soluong");

				hangBO.Sua(maSach, Long.parseLong(soLuong));
			}

			if (buttonType.equals("delete")) {
				String maSach = request.getParameter("masach");

				hangBO.Xoa(maSach);
				
				
				// xóa hết trả về trang chủ
				if (hangBO.gioHang.size() == 0) {
					session.setAttribute("giohang", hangBO);
					RequestDispatcher rd = request.getRequestDispatcher("SachController");
					rd.forward(request, response);
					
					return;
				}
			}
			

			session.setAttribute("giohang", hangBO);

		}
		RequestDispatcher rd = request.getRequestDispatcher("htgio.jsp");
		rd.forward(request, response);
	} catch (Exception e) {
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
