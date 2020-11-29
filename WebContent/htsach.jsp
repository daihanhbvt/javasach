<%@page import="bean.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>


<html>
<head>
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<style>
html {
	font-family: 'Be Vietnam', sans-serif;
	font-size: 14px;
	color: #111111;
	font-weight: 400;
	line-height: 1.4em;
	background: #ffffff;
}

p {
	font-family: 'Be Vietnam', sans-serif;
	font-size: 14px;
	color: #636363;
	line-height: 26px;
	margin: 0;
	font-weight: 500;
}

/*HOME-MENU*/
.middle-slider {
	position: relative;
}

.headroom--top {
	-webkit-transition: all 0.3s ease-in-out;
	-o-transition: all 0.3s ease-in-out;
	-moz-transition: all 0.3s ease-in-out;
	transition: all 0.3s ease-in-out;
	position: fixed;
	top: 0px;
	width: 100%;
}

.navbar-core {
	z-index: 1000000;
}

.navbar-core .s-inner {
	position: relative;
}

.f-left {
	float: left;
}

.navbar-core .hamburger {
	display: none;
}

.navbar-main .navbar-menu {
	position: relative;
}

.navbar-core .navbar-menu {
	padding: 0;
	margin: 0 0px;
	list-style: none;
	display: inline-block;
}

.navbar-core .navbar-menu>li {
	margin: 0 5px;
	display: inline-block;
}

.s-wrapper {
	background-image: url(bcgilove.jpg);
}

.navbar-core .navbar-menu>li>a {
	display: inline-block;
	padding: 28px 10px;
	color: #fff;
	text-transform: uppercase;
	font-size: 14px;
	font-weight: 700;
}

.navbar-core .navbar-menu>li>a:hover {
	color: #FFA101;
}

.trangchu ul {
	text-align: left;
	list-style: none;
}

.trangchu li {
	margin: 10px;
	font-size: 14px;
}

.trangchu li a {
	color: plum;
}

.trangchu {
	display: flex;
	margin-top: 20px;
	width: 100%;
}

.trangchu .dsloai {
	position: fixed;
	bottom: 28px;
	padding: 10px;
	height: 530px;
	width: 18%;
	margin-right: 20px;
	display: flex;
	flex-wrap: wrap;
	background-image: url("gird.jpg");
}

.dsloai .loai {
	display: flex;
	align-items: center;
	width: 100%;
	height: 40px;
	font-weight: bold;
	font-size: 14px;
	background-image: url("nengo.jpg");
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5), 0 6px 20px 0
		rgba(0, 0, 0, 0.4);
}

.dsloai .loai p {
	padding-left: 40px;
	color: navy;
	font-size: 15px;
	font-weight: bold;
}

.dsloai ul li a {
	
}

article {
	width: 274px;
	height: 430px;
	padding: 20px;
	border: 1px solid sienna;
	margin-right: auto;
	margin-bottom: 50px;
	background-color: navajowhite;
	box-shadow: 2px 4px 8px 2px rgba(0, 0, 0, 0.5), 2px 6px 20px 2px
		rgba(0, 0, 0, 0.4);
}

.trangchu .dssach {
	width: 80%;
	margin-left: auto;
	display: flex;
	justify-conten: space-between;
	flex-wrap: wrap;
}

article .image {
	
}

article .image img {
	width: 100%;
	height: 250px;
}

article .info {
	height: 30%;
}

.info .gio {
	
}

.info .chitiet {
	height: 100%;
	flex-wrap: nowrap;
}

.chitiet_ct {
	background-color: appworkspace;
}

.promotebanner {
	margin-top: 100px;
}

.keonhacai {
	position: fixed;
	width: 120px;
	left: 0px;
	bottom: 0px;
}
</style>
<body>
	<div class="home-menu">
		<nav
			class="navbar-core navbar-white navbar-v1 headroom headroom--not-bottom headroom--pinned headroom--top">
			<div class="s-wrapper">
				<div class="container-fluid">
					<div class="s-inner clearfix">
						<div class="pull-left nav-left"></div>
						<button class="hamburger has-animation hamburger--collapse"
							id="toggle-icon">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
						<div class="pull-left nav-right">
							<div class="navbar-main">
								<ul class="navbar-menu">
									<li class=""><a href="SachController" class="active">TRANG
											CHỦ</a></li>
									<li class=""><a href="SachController">THANH TOÁN</a></li>
									<li class=""><a href="SachController">LỊCH SỬ MUA HÀNG</a></li>
									<li class=""><a href="DangKyController"
										data-toggle="modal" data-target="#myModal">ĐĂNG KÝ</a></li>
									<li class=""><a href="DangNhapController"
										data-toggle="modal" data-target="#myModal2">ĐĂNG NHẬP</a></li>


									<!-- form dang ky -->
									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">
											<!-- Modal content-->
											<div class="modal-content">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>
										</div>
									</div>

									<!-- form dang nhap -->
									<div class="modal fade" id="myModal2" role="dialog">
										<div class="modal-dialog">
											<!-- Modal content-->
											<div class="modal-content">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>
										</div>
									</div>




									<li class="ic-enjoy1 ">
										<form action="SachController" method="post">
											<input type="text" name="key"
												placeholder="Nhập sách bạn muốn tìm kiếm"
												style="width: 250px; border: 1px solid #000; border-radius: 5px; height: 38px; padding: 3px 10px 6px 10px; margin-right: 50px;">

										</form>

									</li>

									<li class=""><a style="color: White" href="GioController"><span
											class="fas fa-shopping-cart" style="color: red"></span>GIỎ
											HÀNG</a></li>

									<li>

										<div class="dropdown">
											
												<%
													KhachHangBean username = (KhachHangBean) session.getAttribute("kh");
												if (username != null) {%>
													
													<button class="dropdown-toggle" type="button"
															data-toggle="dropdown">
													<% out.print(" " + username.getHoTen()); %>
													</button>
												

												<%
													} else { %>

														
														<% out.print("Xin vui lòng đăng nhập "); %>
														
											<% 
												}
												%>
											
											<ul class="dropdown-menu ">
												<li><a href="LogOutController"> Đăng Xuất </a></li>
											</ul>
										</div>
										
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>


		</nav>
	</div>


	<div class="promotebanner">
		<a aria-label="slide" data-cate="0" data-place="1197"
			href="https://www.thegioididong.com/flashsale"></a><img
			style="cursor: pointer" src="tgdd.gif" alt="black friday"
			width="100%" height="95">
	</div>









	<%
		ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
	ArrayList<SachBean> dssach = (ArrayList<SachBean>) request.getAttribute("dssach");
	%>

	<div class="trangchu">

		<div class="dsloai">
			<div class="loai">
				<p>DANH MỤC SÁCH</p>
			</div>
			<ul>
				<%
					for (LoaiBean loai : dsloai) {
				%>
				<li><a href="SachController?maloai=<%=loai.getMaLoai()%>">
						<%=loai.getTenLoai()%>
				</a></li>
				<%
					}
				%>
			</ul>


		</div>




		<div class="dssach">
			<%
				for (SachBean sach : dssach) {
			%>
			<article>

				<div class="image">
					<img alt="" src="<%=sach.getAnh()%>">

				</div>

				<div class="info">




					<div class="chitiet">
						<div class="chitiet_ct">
							Mã sách:
							<%=sach.getMaSach()%>
						</div>
						<div class="chitiet_ct">
							Tên sách:
							<%=sach.getTenSach()%>
						</div>
						<div class="chitiet_ct">
							Tác giả:
							<%=sach.getTacGia()%></div>
						<div class="chitiet_ct">
							Giá:
							<%=sach.getGia()%></div>
					</div>
					<form action="GioController">
						<div class="gio">
							<input type="hidden" name="masach" value="<%=sach.getMaSach()%>"> 
							<input type="hidden" name="tensach" value="<%=sach.getTenSach()%>"> 
							<input type="hidden" name="gia" value="<%=sach.getGia()%>"> 
							<input type="hidden" name="soluong" value="1">
							<button type="submit" name="type" value="buy">Thêm vào giỏ</button>
						</div>
					</form>

				</div>
			</article>
			<%
				}
			%>

		</div>
	</div>
</body>

<script src="js/jquery-1.11.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</html>