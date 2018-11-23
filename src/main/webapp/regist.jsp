<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">
function yzm(){
	$("#changeImg").prop("src","getKapt.do?a="+Math.random());


}
//验证表单
	function checkForm(){
		if(checkName()&&checkPwd()&&checkCade()&&checkTel()){
						return true;
					} else {
						return false;
					}
			}


//用户名
	function checkName(){
		var username = $("#username").val();
		var userinfo = $("#userinfo");
			if(username.length < 6){
				$(userinfo).html("用户名要求不低于6个字符");
				return false;
			}else{
			$(userinfo).html("");
			return true;

	}
	}
//密码
	function checkPwd(){
		var username = $("#password").val();
		var userinfo = $("#pwdinfo");
			if(username.length < 6){
				$(userinfo).html("密码要求不低于6个字符");
				return false;
			}else{
			$(userinfo).html("");
			return true;

	}
	
	}
//身份证号
	function checkCade(){
	var username = $("#card").val();
		var userinfo = $("#cardinfo");
			if(username.length == 0){
				$(userinfo).html("身份证号必填");
				return false;
			}else{
			$(userinfo).html("");
			return true;

	}
	
	
	}
//电话
	function checkTel(){
	var username = $("#tel").val();
		var userinfo = $("#telinfo");
			if(username.length == 0){
				$(userinfo).html("电话号码必填");
				return false;
			}else{
			$(userinfo).html("");
			return true;

	}
	
	}


</script>
</head>

<body>
	<div class="wrap">
		<!-- main begin-->
		<form action="${pageContext.request.contextPath}/reg.do" method="post"
			onsubmit="return checkForm()">
			<div class="zclf login logns">
				<h1 class="blue">用户注册</h1>
				<dl>
					<dd>
						<label> <small>*</small>用户名
						</label> <input type="text" class="inputh lf" value=""
							onblur="checkName()" id="username" name="name" />
						<div class="lf red laba" id="userinfo"></div>
					</dd>
					<dd>
						<label> <small>*</small>密码
						</label> <input type="text" class="inputh lf" value="" onblur="checkPwd()"
							id="password" name="password" />
						<div class="lf red laba" id="pwdinfo"></div>
					</dd>
					<dd>
						<label> <small>*</small>身份证号
						</label> <input type="text" class="inputh lf" value=""
							onblur="checkCade()" id="card" name="card_no"/>
						<div class="lf red laba" id="cardinfo"></div>
					</dd>
					<dd>
						<label> <small>*</small>电话
						</label> <input type="text" class="inputh lf" value="" onblur="checkTel()"
							id="tel" name="tel" />
						<div class="lf red laba" id="telinfo"></div>
					</dd>
					<dd>
						<label> <small>*</small>住址
						</label> <input type="text" class="inputh lf" value="" name="address" />
					</dd>
					<dd>
						<label> <small>*</small>邮政编码
						</label> <input type="text" class="inputh lf" value="" name="post_number" />
					</dd>
					<dd class="hegas">
						<label> <small>*</small>验证码
						</label> <input type="text" class="inputh inputs lf" value="" name="yzmmm" /> <span
							class="wordp lf"><img src="getKapt.do" width="96" id="changeImg"
							height="27" alt="" /></span> <span class="blues lf"><a href="javascripet:void(0)"
							onclick="yzm()"
							title="">看不清</a></span>
					</dd>
					<dd class="hegas">
						<label>&nbsp;</label> <input name="" type="checkbox" id="rem_u" />
						<label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
					</dd>
					<dd class="hegas">
						<label>&nbsp;</label> <input name="" type="submit" value="立即注册"
							class="spbg buttombg buttombgs f14 lf" />
					</dd>
				</dl>
			</div>
		</form>
		<!-- main end-->
		<!-- footer begin-->

	</div>
	<!--footer end-->

	</div>
</body>
</html>
