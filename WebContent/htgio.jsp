
<%@page import="bo.*"%>
<%@page import="bean.*"%>
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
	margin: 0 25px;
	list-style: none;
	display: inline-block;
}

.navbar-core .navbar-menu>li {
	margin: 0 5px;
	display: inline-block;
}

.s-wrapper {
	background: #000;
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

section {
	display: flex;
	justify-conten: space-between;
	flex-wrap: wrap;
}

article {
	with: 200px;
	height: 400px;
	padding: 20px;
	border: 1px solid red;
}
</style>
</head>
<body>





	<%
		HangBO hangBO = (HangBO) session.getAttribute("giohang");
	%>
	<section>
		<%
			if (hangBO != null) {
			for (HangBean hang : hangBO.gioHang) {
		%>
		<article>
			<form action="GioController">
				<input type="hidden" name="masach" value="<%=hang.getMaSach()%>">
				<input type="number" name="soluong" min="1"
					value="<%=hang.getSoLuong()%>">

				<div>
					Tên sách
					<%=hang.getTenSach()%></div>
				<div>
					Giá
					<%=hang.getGia()%></div>
				<div>
					Thành tiền:
					<%=hang.getThanhTien()%>
				</div>

				<button type="submit" name="type" value="update">Cập nhật</button>
				<button type="submit" name="type" value="delete">Xóa</button>


				<div>
					<%=hang.getTenSach()%>
				</div>

			</form>
		</article>
		<%
			}
		}
		%>

	</section>


	<%
		if (hangBO != null) {
	%>

	<div>
		Tổng tiền:
		<%=hangBO.getTongTien()%>
	</div>
	<%
		}
	%>
	<form action="GioController">
		<button type="submit" name="type" value="mua">Thanh Toán</button>
	</form>


</body>

<script src="js/jquery-1.11.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</html>