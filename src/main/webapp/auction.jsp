<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
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
<script type="text/javascript" src="/springMVC_auction/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">



</script>
</head>

<body>
<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  
  
  <div class="forms">
  <form action="${pageContext.request.contextPath}/getAll.do" method="post">
    <label for="name">名称</label>
    <input type="text" class="nwinput" id="name" name="name"/>
    <label for="names">描述</label>
    <input type="text" id="names" class="nwinput" name="desc"/>
    <label for="time">开始时间</label>
    <input type="text" id="time" class="nwinput" name="start_time"/>
    <label for="end-time">结束时间</label>
    <input type="text" id="end-time" class="nwinput" name="end_time"/>
    <label for="price" >起拍价</label>
    <input type="text" id="price" class="nwinput" name="upset" /> <input
					name="" type="submit" value="查询"
					class="spbg buttombg f14  sale-buttom" />
 </form>
		<div>
		<a href="${pageContext.request.contextPath}/add.jsp"  class="spbg buttombg f14  sale-buttom buttomb"> 
			发布
		</a>
		</div>
  </div>

  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      <c:forEach items="${requestScope.Aulist}" var="auction">
      <ul class="rows">
        <li><a href="国书" title="">${auction.name}</a></li>
        <li class="list-wd">${auction.desc}</li>
        <li><fmt:formatDate value="${auction.start_time}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
        <li><fmt:formatDate value="${auction.end_time}" pattern="yyyy-MM-dd HH:mm:ss" /></li>
        <li>${auction.upset}</li>
        <li class="borderno red">
             <c:if test="${sessionScope.user.id_admin==1}"> 
		   <a href="${pageContext.request.contextPath}/getOne.do?id=${auction.id}" title="修改" onclick="dele()">修改</a>|
          <a href="${pageContext.request.contextPath}/delete.do?id=${auction.id}" title="删除" onclick="abc()">删除</a>
         </c:if>
         <c:if test="${sessionScope.user.id_admin==0}">
          <a href="${pageContext.request.contextPath}/getRecord.do?auction_id=${auction.id}">竞拍</a>
         </c:if>
         
        </li>
        </ul>
   </c:forEach>

      <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div>
  </div>
  <script>
   function abc(){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
	    
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(){
		   if(confirm("你真的确认要修改吗？请确认")){
			   return true;
			   }
			   else{
				   return false;
				   }
		   }
  </script>
<!-- main end-->
</div>
</body>
</html>
