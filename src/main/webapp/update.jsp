<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="/springMVC_auction/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function() {
		// 文件上传(文件域)的改变事件
		$(":file").change(function(event) {
			//  HTML5 js 对象的获取
			var files = event.target.files, file;
			if (files && files.length > 0) {
				// 获取目前上传的文件
				file = files[0];
				// 文件的限定类型什么的道理是一样的
				if (file.size > 1024 * 1024 * 2) {
					alert("图片大小不能超过 2MB!");
					return false;
				}
				// file对象生成可用的图片
				var URL = window.URL || window.webkitURL;
				// 通过 file 生成目标 url
				var imgURL = URL.createObjectURL(file);

				$("img").attr("src", imgURL);
			}
		});
	});

	function checkSdate() {
		/* alert(1); */
		//日期的正则表达式
		var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d).[0-5]\d.[0-5]\d$/;
		var s = $("#start").val();
		var a = $("#kssj");
		/* alert(s); */
		if (!reg.test(s)) {
			$(a).html("格式：2010-05-05 12:30:00");
		} else {
			$(a).html("");
		}
	};
	function checkEdate() {
		/* alert(1); */
		//日期的正则表达式
		var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])\s+(20|21|22|23|[0-1]\d).[0-5]\d.[0-5]\d$/;
		var s = $("#end").val();
		var a = $("#jssj");
		if (!reg.test(s)) {
			$(a).html("格式：2010-05-05 12:30:00");
		} else {
			$(a).html("");
		}
	};

	function checkStartprice() {

		var reg = /^[0-9]+.?[0-9]*$/;
		var s = $("#min").val();
		var a = $("#qpj");
		if (!reg.test(s)) {

			$(a).html("必须为数字");
		} else {
			$(a).html("");
		}
	}

	function checkUpset() {

		var reg = /^[0-9]+.?[0-9]*$/;
		var s = $("#max").val();
		var a = $("#dj");
		if (!reg.test(s)) {

			$(a).html("必须为数字");
		} else {
			$(a).html("");
		}
	}
</script>
</head>

<body>
	<div class="wrap">
		<!-- main begin-->
		<form action="${pageContext.request.contextPath}/update.do"
			method="post" enctype="multipart/form-data">
			<%-- <c:forEach items="${requestScope.Aulist}" var="auction"> --%>
				<div class="sale">
					<h1 class="lf">在线拍卖系统</h1>
					<div class="logout right">
						<a href="#" title="注销">注销</a>
					</div>
				</div>
				<div class="login logns produce">
					<h1 class="blues">拍卖品信息</h1>
					<dl>
						<dd>
							<label>名称：</label> <input type="hidden" value="${requestScope.Aulist.id}"
								name="id" /> <input type="text" class="inputh lf"
								value="${requestScope.Aulist.name}" name="name" />
							<div class="xzkbg spbg lf"></div>
						</dd>
						<dd>
							<label>起拍价：</label> <input id="min" onblur="checkStartprice()" type="text" class="inputh lf"
								value="${requestScope.Aulist.start_price}" name="start_price" />
							<div class="lf red laba" id="qpj"></div>
						</dd>
						<dd>
							<label>底价：</label> <input id="max" onblur="checkUpset()" type="text" class="inputh lf"
								value="${requestScope.Aulist.upset}" name="upset" />
							<div class="lf red laba" id="dj"></div>
						</dd>
						<dd>
							<label>开始时间：</label> <input id="start" onblur="checkSdate()" type="text" name="start_time"
								class="inputh lf"
								value="<fmt:formatDate value='${requestScope.Aulist.start_time}' pattern='yyyy-MM-dd HH:mm:ss'/>" />
							<div class="lf red laba" id="kssj"></div>
						</dd>
						<dd>
							<label>结束时间：</label> <input id="end" onblur="checkEdate()" name="end_time" type="text"
								class="inputh lf"
								value="<fmt:formatDate value='${requestScope.Aulist.end_time}' pattern='yyyy-MM-dd HH:mm:ss'/>" />
							<div class="lf red laba" id="jssj"></div>
						</dd>
						<dd class="dds">
							<label>拍卖品图片：</label>
							<div class="lf salebd">
								<a href="#"><img src="${pageContext.request.contextPath}/upload/${requestScope.Aulist.pic}" width="100" height="100" /></a>
							</div>
							<input name="picture" type="file" class="offset10 lf" />

						</dd>
						<dd class="dds">
							<label>描述：</label>
							<textarea cols="" rows="" class="textarea" name="desc"
								value="${requestScope.Aulist.desc}">${requestScope.Aulist.desc}</textarea>
						</dd>
						<dd class="hegas">
							<input name="" type="submit" value="保 存"
								class="spbg buttombg buttombgs buttomb f14 lf" /> <input
								name="" type="button" value="取 消"
								class="spbg buttombg buttombgs buttomb f14 lf" />
						</dd>
					</dl>
				</div>
		<%-- 	</c:forEach> --%>
		</form>
		<!-- main end-->
		<!-- footer begin-->

	</div>
	<!--footer end-->

	</div>
</body>
</html>
