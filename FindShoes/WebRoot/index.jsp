<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
    <link rel="stylesheet" href=" ./css/login.css"  type="text/css" />  
    <link rel="stylesheet" href="./css/login/jquery.mobile.custom.structure.min.css" />
	<link rel="stylesheet" href="./css/login/jquery.mobile.custom.theme.min.css" />
    <link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.css" />
	<link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.dark.css"  id='jQMnDTheme' />
	<link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.color.green.css" id='jQMnDColor' />
	<script src="./js/login/jquery-1.9.1.min.js"></script>
	<script src="./js/login/jquery.mobile.custom.min.js"></script>
  </head>
  
  <body>
    	<div data-role="page" id="page" data-theme="b" >
    	<div data-role="content" id="content">   
        	<!--<h1>Find美鞋</h1>-->
            <img style="height:20%;width:75%;margin-top:1em;margin-left:3em" src="./images/logo.png" />
       		<form action="dashboard.html" method="get" data-transition="slide">
            	 <ul data-role="listview" data-inset="true" class="list-ul">
               		 <li  class="list-li"data-role="fieldcontain">
                  		  <input type="text" name="username" id="username" value="" data-clear-btn="true" placeholder="Username / Email">
                	 </li>
               		 <li class="list-li" data-role="fieldcontain">
                   		 <input type="text" name="password" id="password" value="" data-clear-btn="true" placeholder="Password">
               		 </li>
               		 <li><center>
                     <button type="submit" data-inline='true' style="display:inline"><i id='lIcon fa fa-check'>登录</i></button>
                     <button type="submit" data-inline='true' style="display:inline"><i id='lIcon fa fa-check'>注册</i></button>
                     </center></li>
           		 </ul>
       	    </form>
         </div>
    </div>
  </body>
</html>
