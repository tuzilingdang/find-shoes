<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%--     <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> --%>
	 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
    <link  rel="stylesheet"  type="text/css"  href="./css/jquery.mobile.flatui.css" />
<!--      <script src="./js/personal/jquery.mobile-1.4.0-rc.1.js"></script> -->
     <script src="./js/personal/jquery.js"></script>
     <link rel="stylesheet" href="./css/personal/personal.css" type="text/css" /> 
    <script src="./js/personal/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="./js/personal/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>
    
   
</head>

<body>
	   <div data-role="page" id="page" >
          <div id = "header" data-role="header" data-theme="a">  
          	   <a href="homepage.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" > 我的美鞋 </h1>
          </div>
          <div data-role="content" role="main" style=" -moz-border-radius:20px;-webkit-border-radius: 20px; border-radius:20px;" ">
              <div id="head-div">
            	  <div id="head-left-div"> 
             	     <img id="head-img" src="./images/missLee.png" />
                  </div>
                  <div id="head-right-div"> 
                      <p class ="p-info">用户名：<s:property value="#session.uid" /> </p>
                      <p class ="p-info">您现在是我们的注册会员。
                      	<!-- <a href="../index.html" target="_blank" style="color: #FF7575">升级</a> </p> -->
                      <p class ="p-info">账户余额：<s:property value="#session.ublance" />元 </p>
                  </div>
               </div>
          </div>
          
          <div data-role="content" role="main"  style=" -moz-border-radius:20px;-webkit-border-radius: 20px; border-radius:20px;">
			      <div data-role="ui-grid-b" class="ui-grid-b" data-theme="f" style="height: auto">
                    <div data-role="ui-block-a" class="ui-block-a" >
                        <a ><img src="./images/text-file-4-64.png" /></a>
                         <h4 class="icon_name">我的档案</h4>                
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" >
                         <a><img src="./images/facebook-like-3-64.png" /></a>
                         <h4 class="icon_name">为我推荐</h4>
                    </div>
                    <div data-role="ui-block-c" class="ui-block-c" >
                        <a><img src="./images/video-5-64.png" /></a>
                        <h4 class="icon_name">预约试鞋</h4>
                    </div>       
               </div>  
         </div>
         <div data-role="content" role="main"  style=" -moz-border-radius:20px;-webkit-border-radius: 20px; border-radius:20px;">
<!--              <ul data-role="listview" data-inset="true">
                <li data-role="list-divider" data-theme="a">我的浏览</li>
                <li><a href="#">预约订单</a></li>-->
                <div data-role="ui-grid-solo" class="ui-grid-solo-top"  data-theme="f"  >
                
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">预约订单 <img class="icon-img" src="./images/arrow487.png"/></h4                               
                        ></div>         
                </div>
                
<!--                 <div id="solo" data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  >
                        <div data-role="ui-block-a"  class="ui-block-a-1"> 
                            <h4 class="icon_name">浏览记录 <img class="icon-img" src="./images/arrow487.png"/> </h4>                   
                        </div>         
                </div> -->
                
                <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  >        	  
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">我的喜欢 <img src="./images/arrow487.png" class="icon-img"/></h4>
                        </div>    
                </div>
                <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  >        	  
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">我的收藏 <img src="./images/arrow487.png" class="icon-img"/></h4>
                        </div>    
                </div>
                <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  >        	  
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">我的分享<img src="./images/arrow487.png" class="icon-img"/></h4>
                        </div>    
                </div>
      	</div>
        
           <div data-role="content" role="main"  style=" -moz-border-radius:20px;-webkit-border-radius: 20px; border-radius:20px;">
<!--              <ul data-role="listview" data-inset="true">
                <li data-role="list-divider" data-theme="a">我的浏览</li>
                <li><a href="#">预约订单</a></li>-->
                <div data-role="ui-grid-solo" class="ui-grid-solo-top"  data-theme="f"  >
                
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">设置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img class="icon-img" src="./images/arrow487.png"/></h4                               
                        ></div>         
                </div>
      	</div style="width:100%;height:3em;background-color:#fff">
      		<s:form data-ajax="false" action="logout.action" method="post" data-transition="slide" theme="simple">
				<input id="btn-logout"  type="submit" data-inline='true' value="退出登录"/>
			</s:form>
      </div>   
</body>
</html>