<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html> 
<!-- <!DOCTYPE HTML>
<html lang="en-US">  -->
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
	<script src="./js/login/jquery.min.js"></script> 
	<script src="./js/regist/regist.js" type="text/javascript"></script>
	
	
</head>

  
<body>
	<div data-role="page" id="regist-page"  style="background-color:#ff7d81;" >
    	<div data-role="content" id="content" style="margin-top:0px;background-color:#fff;height:30em;">   
        <!-- <img style="height:15%;width:75%;margin-top:1em;margin-left:3em" src="./images/logo.png"/> -->
			<s:form data-ajax="false" class="regist_form" action="regist.action" method="post" theme="simple" data-transition="slide"  style="margin-top:3em;border:none">   <!-- onsubmit="return chkForm()" -->
				<center >
					    <ul data-role="listview" data-inset="true" class="list-ul" style="border:none">
<!-- 		               		 <li  class="list-li"data-role="fieldcontain">
 	                  		 	 <s:textfield type="text" name="user.userId" class="username"  value="" data-clear-btn="true" placeholder="输入用户ID*" ></s:textfield>
 	                  		 	 <input type="text" name="user.userId" id="userId" class="username"  value="" data-clear-btn="true" placeholder="输入用户ID*" required onblur="validate(this,'userId')"/>	                  		 	 
		                	 </li>  -->

		               		 <li  class="list-li"data-role="fieldcontain">
			               		 <input type="text" name="user.nick" class="username"  value="" data-clear-btn="true" placeholder="输入昵称" required /> 
		                	 </li> 
		                	 <li  class="list-li"data-role="fieldcontain">
		                	 	 <input type="text" id="tel"  name="user.telephone" class="username"  required pattern="^1[3|4|5|8][0-9]\d{4,8}$" oninput="out_tel(this)"  value="" data-clear-btn="true" placeholder="输入手机号*" onblur="validate(this,'tel')" />
		                	 </li>
		               		 <li class="list-li" data-role="fieldcontain">
<!-- 		     					 	<s:textfield name="user.password" size="20"  class="username"  value=""  data-clear-btn="true"  placeholder="输入密码"></s:textfield> -->
		     					 	<!-- <input class="text-field" type="password" name="user.password" class="username" value="" data-clear-btn="true" placeholder="输入密码*" />  -->
		               			<input type="password" id="password1" onchange="checkPasswords()" name="user.password" class="username" placeholder="输入密码*" value="" data-clear-btn="true" required /> 
		               		 </li>
					
							<li class="list-li" data-role="fieldcontain">
		     	             	<!-- <s:textfield type="text" name="user.email"  class="username"  value="" data-clear-btn="true" placeholder="输入Email*"></s:textfield> -->

		     	             	<input type="password" id="password2"  onchange="checkPasswords()"  class="username" placeholder="确认密码*" value="" data-clear-btn="true" required />
		               		 </li>
					
<!-- 		               		 <li>
		                   	  <input  style="background-color: #FF797; display:inline;width:50% " value="手机注册" name="submit" type="submit" > 
		                   	  <input  style="background-color: #FF7979;display:inline;width:50% " value="邮箱注册" name="submit" type="submit" >
		                    </li> -->
		           		 </ul>
						<table style="width:94%;height:6em"> 
						<tr><p class="errorInfo"></p></tr>
						  <tr>
						    <td style="padding-right:0em"> <input  id="submit1"  value="注册" name="submit" type="submit" onclick="document.passwordChange.password1.checkValidity()"/></td>
						    <!-- <td style="padding-left:.5em"><a id="chg-input" href="email-regist.jsp" target="_blank"> <input  id="submit2"  value="邮箱注册" name="submit" type="submit" readonly /></a></td>  -->
						  </tr>
						</table>
		        </center > 
			</s:form>
	    </div>
     </div>
</body>
                     
</html>
