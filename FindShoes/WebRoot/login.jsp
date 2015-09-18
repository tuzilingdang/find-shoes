<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <%-- <base href="<%=basePath%>">
     --%>
    <title>login.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
     <link rel="stylesheet" type="text/css" href="./css/login/login.css"/>
    <link rel="stylesheet" type="text/css" href="./css/login/jquery.mobile.custom.structure.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/login/jquery.mobile.custom.theme.min.css" />
    <link rel="stylesheet" type="text/css" href="./css/login/jquerymobile.nativedroid.css" />
	<link rel="stylesheet" type="text/css" href="./css/login/jquerymobile.nativedroid.light.css"  id='jQMnDTheme' />
	<link rel="stylesheet" type="text/css" href="./css/login/jquerymobile.nativedroid.color.red.css" id='jQMnDColor' /> 
	<script src="./js/login/jquery-1.9.1.min.js"></script>
 	<script src="./js/login/jquery.mobile.custom.min.js"></script> 
  </head>
  
 
  
  <!-- body体 -->
  <body style="margin:0px 0px 0px 0px" onload="load()"> 
   	<div data-role="page" id="page" data-theme="b" >
    	<div data-role="content" id="content">   
        	<!-- <h1>Find美鞋</h1> -->
          <!--   <img style="height:20%;width:75%;margin-top:.3em;margin-left:3em" src="./images/logo-black.png" /> -->
       		<!-- <form action="dashboard.html" method="get" data-transition="slide"> -->
       		<s:form data-ajax="false" action=" login.action" method="post" data-transition="slide" theme="simple">
            	 <ul id="ul" data-role="listview" data-inset="true" class="list-ul">
            	 <center>
               		 <li  class="list-li"data-role="fieldcontain">
                  		<!--   <input type="text" name="username" id="username" value="" data-clear-btn="true" placeholder="Username / Email"> -->
                  		 <!--  <s:textfield  class="text-field" type="text" name="user.userId" id="username" value="" data-clear-btn="true" placeholder="Username / Email"></s:textfield> -->
                  		 <input type="text" name="user.userId" class="username" id="username" value="" data-clear-btn="true" placeholder="用户ID" required/>
                	 </li>
               		 <li class="list-li" data-role="fieldcontain">
                   		<!--  <input type="text" name="password" id="password" value="" data-clear-btn="true" placeholder="Password"> -->
                   		<input type="password"  name="user.password" id="username" class="username" placeholder="密码" value="" data-clear-btn="true" required /> 
               		 </li>
               		 
                     <li > <button id="btn-login" type="submit" data-inline='true' style="display:inline">登录</button></li>
                     <li ><button id="btn-regist" data-inline='true' style="display:inline"><a href="tel-regist.jsp"  target="_blank">注册</a></button></li>               
                    </center>
           		 </ul>
       	    </s:form>
       	           
         </div>
    </div>

  <!--   	<div data-role="page" id="page" data-theme="b" >
    	<div data-role="content" id="content">   
        	<h1>Find美鞋</h1>
            <img style="height:20%;width:75%;margin-top:1em;margin-left:3em" src="./images/logo.png" />
       		
       		<s:form action="login.action" method="post" data-transition="slide" theme="simple">
            	 <ul data-role="listview" data-inset="true" class="list-ul">
               		 <li  class="list-li"data-role="fieldcontain">
                  		  <s:textfield type="text" name="user.userId" id="username" value="" data-clear-btn="true" placeholder="Username / Email"></s:textfield>
                	 </li>
               		 <li class="list-li" data-role="fieldcontain">
                   		  <s:textfield type="text" name="user.password" id="password" value="" data-clear-btn="true" placeholder="Password"></s:textfield>
               		 </li>
               		 <li><center>
                     <button type="submit" data-inline='true' style="display:inline">登录</button>
                     <button data-inline='true' style="display:inline"><a href="regist.jsp">注册</a></button>
                     </center></li>
           		 </ul>
       	    </s:form>    	    
         </div>
    </div>  -->
  </body>
</html>
