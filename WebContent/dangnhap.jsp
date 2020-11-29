<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Dang Nhap</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Đóng</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Đăng Nhập</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-12">
						<div class="well">
							<form method="post" action="DangNhapController">
								<div class="form-group">
									<label for="username" class="control-label">Tài khoản</label><input
										class="form-control" id="username" name="makh" value=""
										required="" title="Xin vui lòng nhập tên tài khoản"
										placeholder="abc@gmail.com" type="text"><span
										class="help-block"></span>
								</div>
								<div class="form-group">
									<label for="password" class="control-label">Mật khẩu</label><input
										class="form-control" id="password" name="matkhau" value=""
										required="" title="Xin vui lòng nhập mật khẩu" type="password"><span
										class="help-block"></span>
								</div>
								<label> <input name="remember" id="remember"
									type="checkbox"> Nhớ thông tin
								</label>
								<p class="help-block">(Nếu sử dụng máy tính cá nhân)</p>
						
						<button type="submit" name="but1" class="btn btn-success btn-block">Đăng
							nhập</button>
						<a href="DangKyController" class="btn btn-default btn-block">Đăng
							Ký</a>
						</form>
						</div>
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
