<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>



	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Đóng</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Đăng Ký</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-12">
						<form method="post" action="DangKyController">
							<div class="well">
								<div class="form-group">
									<label class="control-label">Mã khách hàng</label> <input
										class="form-control" type="text" placeholder="makhachhang"
										name="makhachhang" required
										title="Xin vui lòng nhập mã khách hàng"> 
									<span class="help-block"></span>
								</div>
								<div class="form-group">
									<label class="control-label">Họ tên</label>
									<input
										class="form-control" type="text" placeholder="hoten"
										name="hoten" required title="Xin vui lòng nhập mã khách hàng">
									<span class="help-block"></span>
								</div>

								<div class="form-group">
									<label class="control-label">Địa chỉ</label><input
										class="form-control" type="text" placeholder="diachi"
										name="diachi" required title="Xin vui lòng nhập mã khách hàng"><span
										class="help-block"></span>
								</div>
								<div class="form-group">
									<label class="control-label">Số điện thoại</label><input
										class="form-control" type="text" placeholder="sodt"
										name="sodt" required title="Xin vui lòng nhập mã khách hàng"><span
										class="help-block"></span>
								</div>
								<div class="form-group">
									<label class="control-label">Email</label><input
										class="form-control" type="text" placeholder="email"
										name="email" required title="Xin vui lòng nhập mã khách hàng"><span
										class="help-block"></span>
								</div>
								<div class="form-group">
									<label class="control-label">Tên đăng nhập</label><input
										class="form-control" type="text" placeholder="tendn"
										name="tendn" required title="Xin vui lòng nhập mã khách hàng"><span
										class="help-block"></span>
								</div>

								<div class="form-group">
									<label class="control-label">mật khẩu</label><input
										class="form-control" type="password" placeholder="matkhau"
										name="matkhau" required
										title="Xin vui lòng nhập mã khách hàng"><span
										class="help-block"></span>
								</div>
							</div>


							<button type="submit" name="but1"
								class="btn btn-success btn-block">Xác nhận đăng ký</button>
							<a href="DangNhapController" class="btn btn-default btn-block">Đăng
								nhập</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</html>
