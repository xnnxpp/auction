<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>拍卖品竞拍页面</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/springMVC_auction/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">

	function checkjq() {
		/* alert(1) */
		var price = $("#sale").val();
		var maxPrice = $("#maxPrice");
		var tishi = $("#tishi");
		if(parseInt(price) <= parseInt(maxPrice.html())){
			$(tishi).html("不能低于最高竞拍价");
			return false;
		}else{
			return true;
			}
	}

	function checkForm() {
		if (checkjq()) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>

<body>
	<div class="wrap">
		<!-- main begin-->
		<div class="sale">
			<h1 class="lf">在线拍卖系统</h1>
			<div class="logout right">
				<a href="#" title="注销">注销</a>
			</div>
		</div>
		
		<%-- <c:forEach items="${Alist}" var="auction"> --%>
		<div class="items sg-font lf">
		
			<ul class="rows">
				<li>名称：</li>
				<li class="borderno">${requestScope.Alist.name}</li>
			</ul>
			<ul class="rows">
				<li>描述：</li>
				<li class="borderno">${requestScope.Alist.desc}</li>
			</ul>
			<ul class="rows">
				<li>开始时间：</li>
				<li class="borderno"><fmt:formatDate value="${requestScope.Alist.start_time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
			</ul>
			<ul class="rows">
				<li>结束时间：</li>
				<li class="borderno"><fmt:formatDate value="${requestScope.Alist.end_time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
			</ul>
			<ul class="rows border-no">
				<li>起拍价：</li>
				<li class="borderno">${requestScope.Alist.upset}</li>
			</ul>
			
		</div>
		<div class="rg borders">
			<img src="${pageContext.request.contextPath}/upload/${requestScope.Alist.pic}" width="270px" height="185px"/>
		</div>
		
		
		
		<div class="cl"></div>
		
		<div class="top10 salebd">
			<p>
				<form method="post" action="${pageContext.request.contextPath}/addRecord.do" onsubmit="return checkForm()">
				<label for="sale">出价：</label> 
				<input type="text" class="inputwd" id="sale" name="auction_price" onblur="checkjq()"/> 
				<input type="hidden"  name="auction_id" value="${requestScope.Alist.id}"/>
				<input type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom">
				
				</form>
			</p>
			<p class="f14 red" id="tishi"></p>
		</div>
		<%-- </c:forEach> --%>
		<div class="top10">
			<input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
			<input name="" type="submit" value="返回列表" class="spbg buttombg f14" />
		</div>
		<div class="offer">
			<h3>出价记录</h3>
			<div class="items sg-font">
				<ul class="rows even strong">
					<li>竞拍时间</li>
					<li>竞拍价格</li>
					<li class="borderno">竞拍人</li>
				</ul>
				<c:forEach items="${Rlist}" var="record" varStatus="sta">
					<c:if test="#sta.index%2==1">
						<ul class="rows even">
					</c:if>
					<s:else>
						<ul class="rows">
					</s:else>
		
					<li><fmt:formatDate value="${record.time}" pattern="yyyy-MM-dd HH:mm:ss"/></li>
					<li id="maxPrice">${record.price}</li>
					<li class="borderno">${record.name}</li>
				</ul>
				</c:forEach>
				
			</div>
		</div>
		<!-- main end-->
	</div>
</body>
</html>
