<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">

<title>Register Page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
 
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
    <link rel="stylesheet" href="./css/login/login.css"  type="text/css" />  
    <link rel="stylesheet" href="./css/login/jquery.mobile.custom.structure.min.css"  type="text/css"/>
	<link rel="stylesheet" href="./css/login/jquery.mobile.custom.theme.min.css"  type="text/css"/>
    <link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.css"  type="text/css"/>
	<link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.dark.css"  id='jQMnDTheme'  type="text/css"/>
	<link rel="stylesheet" href="./css/login/jquerymobile.nativedroid.color.green.css" id='jQMnDColor'  type="text/css"/>
	<script src="./js/login/jquery-1.9.1.min.js"></script>
	<script src="./js/login/jquery.mobile.custom.min.js"></script>
</head>

  
<body>
	<div data-role="page" id="page" data-theme="b" >
    	<div data-role="content" id="content">   
            <img style="height:15%;width:75%;margin-top:1em;margin-left:3em" src="./images/logo-white.png" />
			<s:form action="regist.action" method="post" theme="simple" data-transition="slide">
				<center>
					    <ul data-role="listview" data-inset="true" class="list-ul">
		               		 <li  class="list-li"data-role="fieldcontain">
 	                  		 	 <s:textfield type="text" name="user.userId" class="username"  value="" data-clear-btn="true" placeholder="输入用户ID"></s:textfield>
		                	 </li> 

		               		 <li  class="list-li"data-role="fieldcontain">
			               		 <s:textfield type="text" name="user.nick" class="username"  value="" data-clear-btn="true" placeholder="输入昵称"></s:textfield>	
		                	 </li> 
		                	 <li  class="list-li"data-role="fieldcontain">
		                	 	 <s:textfield type="text" name="user.userTelephone" class="username"  value="" data-clear-btn="true" placeholder="输入手机号"></s:textfield>
		                	 </li> 
		               		 <li class="list-li" data-role="fieldcontain">
		     					 	<s:textfield name="user.password" size="20"  class="username"  value=""  data-clear-btn="true"  placeholder="输入密码"></s:textfield>
		               		 </li>
					
							<li class="list-li" data-role="fieldcontain">
		     	             	<s:textfield type="text" name="user.email" id="password"  class="username"  value="" data-clear-btn="true" placeholder="输入Email"></s:textfield>
		               		 </li>
					
		               		 <li><center>
		                     <input value="注册" name="submit" type="submit">
		                     </center></li>
		           		 </ul>
		          </center>
			</s:form>
	    </div>
    </div>
</body>


		                     
</html>
