<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>productNum</title>
    
		<link rel="stylesheet" href="./css/jquery.mobile-theme-f.min.css" type="text/css" />
<!--   	<link rel="stylesheet" href="jquery.mobile-1.3.2/jquery.mobile-1.3.2.min.css" type="text/css" />-->
        <link rel="stylesheet" href="./css/productNum.css" type="text/css" />
        
        <script src="./js/jquery-1.6.4.min.js" type="text/javascript"></script>
        <script src="./js/jquery.mobile-1.3.2/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>
<!--         <script src="./js/jquery.mobile-1.0.min.js" type="text/javascript"></script> -->
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  />      
        <meta name="keywords" content="carousel, jquery, responsive, fluid, elastic, resize, thumbnail, slider" />
		<meta name="author" content="Codrops" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <body>
    	<div class = "page" id = "home-page" data-role="page" data-theme="f" >          
            <div id = "header" data-role="header" data-theme="f">  
            	<a href="homepage.jsp" target="_blank"><img src="images/arrow-118-48.ico"/></a>
                <h1 id = "title" >货号搜索 <a href="index.html" id = "addrTitle"></a> </h1>
            </div> <!---->

            <div data-role="content" class="content_1">
            
                <form action="searchGoods.action" data-ajax="false" class="form-search"  method="post" theme="simple">
                	<div data-role="fieldcontain">
    					<s:textfield id="input-search" type="text" name="searchStr" placeholder="输入货号"/>
                    </div>
    					<div class="submit-div" data-role="fieldcontain"> 
                    		<button id="submit-search" type="submit" data-inline="true" value="" >
                    	</div>
				<form>
				
    		</div>
        </div>
    </body>
  </body>
</html>
