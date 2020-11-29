<%@page import="bean.KhachHangBean"%>
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
.cate .list table td {
    border-top: 1px solid #e3e3e3;
    padding: 10px 5px;
    vertical-align: top;
    color: #818181;
    position: relative;
}

.right {
    float: right;
    width: 75%;
    padding: 25px 0;}
 .user {
    font-size: 15px;
    margin-bottom: 20px;
}
.feed-back-detail {
    line-height: 30px;
    padding: 10px;
    position: fixed;
    background: #fff;
    z-index: 100;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    border-radius: 5px;
    display: none;
}
#overbackgroud {
    display: none;
    background: #000;
    z-index: 99;
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: .7;
}
 .list {
    padding: 25px;
    border: 1px solid #ccc;
    border-radius: 3px;
    overflow: hidden;
    position: relative;
}
</style>
<body>

<div class="right">
            

<div class="user" data-customer="1029638366">
    <li>

											<div class="dropdown">
											<button class="btn btn-primary dropdown-toggle" type="button"
												data-toggle="dropdown">
												<%
													KhachHangBean username = (KhachHangBean) session.getAttribute("kh");
												if (username != null) {
													out.print(" " + username.getHoTen());
												%>
												
												<%
													} else {
													out.print("Vui lòng đăng nhập");
												}
												%>
											</button>
											<ul class="dropdown-menu ">
												<li><a href="LogOutController"> Đăng Xuất </a></li>
											</ul>
										</div>
									</li>

</div>
<div id="overbackgroud"></div>
<div class="feed-back-detail">
    <img class="close-p" src="/lich-su-mua-hang/Content/images/iconclose.png">
    <h2>Phản hồi, góp ý lịch sử mua hàng</h2>
    <div class="infor-user">
        <h3>Thông tin khách hàng:</h3>
        <span><span class="sex-f" data-id="1">Anh:</span> <b class="name-f">Hoàng Đức Đại Hạnh</b> - <b class="phone-f">0961552976</b></span>
    </div>
    <div class="feed-user">
        <h3>Thông tin phản hồi góp ý:</h3>
        <textarea id="myTextarea" name="txtFeedback" placeholder="Vui lòng nhập tiếng Việt có dấu..."></textarea>
        <button type="submit" class="submid-feed" onclick="sendFeedbackContent(13);" disabled="">GỬI</button>
        <div class="loader"></div>
    </div>
</div>

<div class="result"></div>

            <div class="list" id="list_order">    <b>Đơn hàng Online đã mua gần đây</b>
    <table cellpadding="0" cellspacing="0">
        <tbody><tr>
            <th>Mã đơn hàng</th>
            <th>Sản phẩm</th>
            <th>Giá</th>
            <th>Ngày đặt mua</th>
            <th>Trạng thái</th>
        </tr>
                <tr class="" data-id="20907091">
            <td>
                    <a href="/lich-su-mua-hang/don-hang-20907091">#20907091</a>
            </td>
            <td>
                <a href="/lich-su-mua-hang/don-hang-20907091"><img src="https://cdn.tgdd.vn/Products/Images/42/167150/nokia-61-plus-2-400x400.jpg"></a>
                <div>
                    <a href="/lich-su-mua-hang/don-hang-20907091">Nokia 6.1 Plus Black</a>

                        <div class="link">
                            <a href="/lich-su-mua-hang/don-hang-20907091">Xem chi tiết</a>
                                                    </div>
                </div>
            </td>
            <td>
                    <b>6.590.000₫</b>
            </td>
            <td><span>03/10/2018</span></td>
            <td>
                                    <i class="fail">Đã hủy</i>
            </td>
        </tr>

    </tbody></table>
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