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
<html lang="en-US"> -->
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
			<s:form data-ajax="false" class="regist_form" action="regist.action" method="post" theme="simple" data-transition="slide"  style="margin-top:3em">   <!-- onsubmit="return chkForm()" -->
				<center>
					    <ul data-role="listview" data-inset="true" class="list-ul" >
		               		 <li  class="list-li"data-role="fieldcontain" >
 	                  		 	 <!-- <s:textfield type="text" name="user.userId" class="username"  value="" data-clear-btn="true" placeholder="输入用户ID*" ></s:textfield> -->
 	                  		 	 <input type="text" name="user.userId" id="userId" class="username"  value="" data-clear-btn="true" placeholder="输入用户ID*" required onblur="validate(this,'userId')"/>	     
		                	 </li> 

		               		 <li  class="list-li"data-role="fieldcontain" >
			               		 <s:textfield type="text" name="user.nick" class="username"  value="" data-clear-btn="true" placeholder="输入昵称"></s:textfield>	
		                	 </li> 
					
							<li class="list-li" data-role="fieldcontain">
		     	             	<!-- <s:textfield type="text" name="user.email"  class="username"  value="" data-clear-btn="true" placeholder="输入Email*"></s:textfield> -->

		     	             	<input type="email" id="email" name="user.email" class="username" placeholder="请输入邮箱*"  value="" required pattern="^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$" oninput="out_email(this)" data-clear-btn="true" style="display:inline" onblur="validate(this,'email')"/>
		               		 </li>
					
		               		 <li class="list-li" data-role="fieldcontain" >
<!-- 		     					 	<s:textfield name="user.password" size="20"  class="username"  value=""  data-clear-btn="true"  placeholder="输入密码"></s:textfield> -->
		     					 	<!-- <input class="text-field" type="password" name="user.password" class="username" value="" data-clear-btn="true" placeholder="输入密码*" />  -->
		               			<input type="password" id="password1" onchange="checkPasswords()" name="user.password" class="username" placeholder="输入密码*" value="" data-clear-btn="true" required /> 
		               		 </li>
		               		 
		                    <li class="list-li" data-role="fieldcontain" >
<!-- 		     					 	<s:textfield name="user.password" size="20"  class="username"  value=""  data-clear-btn="true"  placeholder="输入密码"></s:textfield> -->
		     					 	<!-- <input class="text-field" type="password" name="user.password" class="username" value="" data-clear-btn="true" placeholder="输入密码*" />  -->
		     	             	<input type="password" id="password2"  onchange="checkPasswords()"  class="username" placeholder="确认密码*" value="" data-clear-btn="true" required />
		               		 </li>
		                    
		           		 </ul>
						<table style="width:94%"> 
						  <tr>
						    <td style="padding-right:.5em"><a id="chg-input" href="tel-regist.jsp" target="_blank"> <input  id="submit2"  value="手机注册" name="submit" type="submit" readonly /></a></td>
						    <td style="padding-left:.7em"><input  id="submit1"  value="邮箱注册" name="submit" type="submit" onclick="document.passwordChange.password1.checkValidity()"/></td> 
						  </tr>
						</table>
		         
			</s:form>
	    </div>
     </div>
</body>
                     
</html>
