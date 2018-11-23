<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

	/*$("#changeImg").prop("src","/springMVC_auction/getKapt.do?a="+Math.random());*/
}

</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
    <div class="login">
     <form action="${pageContext.request.contextPath}/login.do" method="post" >
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label><input type="text" class="inputh"  id="name" name="name"/></dd>
        <dd><label for="password">密 码：</label><input type="text" class="inputh"  id="password" name="password"/></dd>
        <%--<dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf"  id="passwords" name="yzmmm"/>
           <span class="wordp lf"><img id="changeImg" src="getKapt.do" width="96" height="27" alt="" /></span>
           <span class="blues lf"><a href="javascripet:void(0)"
							onclick="yzm()" title="">看不清</a></span>
        </dd>--%>
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <a href="${pageContext.request.contextPath}/竞拍者注册页.jsp" class="spbg buttombg f14 lf" >注 册</a>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </form>
    </div>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
</body>
</html>
