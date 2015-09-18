<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>goodsIdSearchErr.jsp</title>
	 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
    <link  rel="stylesheet"  type="text/css"  href="./css/jquery.mobile.flatui.css" />
<!--      <script src="./js/personal/jquery.mobile-1.4.0-rc.1.js"></script> -->
     <script src="./js/personal/jquery.js"></script>
     <link rel="stylesheet" href="./css/header-flat.css" type="text/css" /> 
     <link rel="stylesheet" href="./css/search-result.css" type="text/css" /> 
    <script src="./js/personal/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="./js/personal/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>

  </head>
  
  <body>
  	    <div data-role="page" id="page" >
  	     <div id = "header" data-role="header" data-theme="a">  
          	   <a href="productNum.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" >搜索结果 </h1>
          </div>
  
<!--     <div data-role="content" class="content_2" data-theme="c">
   		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
     </div>
     
     <h1><font color="red">对不起，没有您要找的货号！请重新输入</font></h1><br>
     <a href="productNum.jsp">返回货号搜索</a>
      -->
     
     
        <div data-role="content" class="content_2" >
   		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
    			<div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7.5em"> 
              	<div class="pd-img-div">          		
              	   <img class="pd-img-err" src="./images/cry.gif"/>
                  </div>
                  
                  <div class="pd-text-div">
                     <h4 class="pd-h4" style="font-size:1.1em;top:-4em">没有您要找的鞋子！</h4>
                     <a href="productNum.jsp" style="font-size:1em;color:#666;">返回货号搜索</a>
                   </div> 
                   
      		</div>
     </div>
     
   </div>  
     
  </body>
</html>
