package controller;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DungChung;

/**
 * Servlet implementation class DangKyController
 */
@WebServlet("/DangKyController")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	if (request.getCharacterEncoding() == null ) request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
		
		String maKhacHang = request.getParameter("makhachhang");
		if (maKhacHang !=null) {
			String hoTen = request.getParameter("hoten");
			String diaChi = request.getParameter("diachi");
			String sodt = request.getParameter("sodt");
			String email = request.getParameter("email");
			String tendn = request.getParameter("tendn");
			String matkhau = request.getParameter("matkhau");
			
			DungChung dungChung= new DungChung();
			try {
				dungChung.KetNoi();
				
				String query = "insert into KhachHang values ("+ maKhacHang +", N'" + hoTen +"', N'"+ diaChi +"','"+ sodt +"', '"+ email +"', '"+ tendn +"','"+ matkhau +"')";
				
				PreparedStatement command = dungChung.cn.prepareStatement(query);
				
				command.executeQuery();
				
				dungChung.cn.close();
				//tro ve trang dang nhap
			
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("SachController");
			rd.forward(request, response);
			return;
			
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("dangky.jsp");
				rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
