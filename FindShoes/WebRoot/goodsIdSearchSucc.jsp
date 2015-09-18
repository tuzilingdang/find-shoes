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
     <link rel="stylesheet" href="./css/header-flat.css" type="text/css" /> 
     <link rel="stylesheet" href="./css/search-result.css" type="text/css" /> 
    <script src="./js/personal/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="./js/personal/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>
    
   
</head>

  
  <body>
    <div data-role="page" id="page" >
  	     <div id = "header" data-role="header" data-theme="a">  
          	   <a href="homepage.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" >货号搜索 </h1>
          </div>
  

<%--     <div data-role="content" class="content_2" >
   		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
      	     <a href="goodsDetail.action?gid=<s:property value="goodsIdSearchShow.showOnlineStore.goodsId" />" target="_blank">
    			<div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7.5em"> 
              	<div class="pd-img-div">          		
              	   <img class="pd-img" src="<s:property value="goodsIdSearchShow.showOnlineStore.imgUrl" />"/>
                  </div>
                  
                  <div class="pd-text-div">
                     <h4 class="pd-h4"><s:property value="goodsIdSearchShow.showGoodsName" /></h4>
                     <h5 class="price"><s:property value="goodsIdSearchShow.showOnlineStore.price" />元</h5>
                     <ul class="pd-ul-1" style="list-style-type:none">
                        <li class="pd-li">
                       	 <label  style="font-size:.9em" class="pd-label-h5" >货号：<h5 class="pd-h5"><s:property value="goodsIdSearchShow.showOnlineStore.goodsId" /></h5></label>
                        </li>
                     </ul>
                     <ul class="pd-ul-2" style="list-style-type:none">
                        <li class="pd-li"> 
                        	<label  style="font-size:.9em" class="pd-label-h5" >点赞：<h5 class="pd-h5">2986</h5></label>
                        </li>
                        <li class="pd-li">
                            <label  style="font-size:.9em" class="pd-label-h5" >品牌：<h5 class="pd-h5"><s:property value="goodsIdSearchShow.showBrandName" /></h5></label>       	
                        </li>
                     </ul>
                   </div> 
      		</div>
          </a>
     </div> --%>
     
      <div data-role="content" class="content_2" >
   		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
      	
          	<a href="goodsDetail.action?gid=<s:property value="goodsIdSearchShow.showOnlineStore.goodsId" />" target="_blank">
        			<div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7em"> 
                  	<div class="pd-img-div">          		
                  	   <img class="pd-img" src="<s:property value="goodsIdSearchShow.showOnlineStore.imgUrl" />"/>
                      </div>
                      
                      <div class="pd-text-div"> 
                         <h4 class="pd-h4"><s:property value="goodsIdSearchShow.showGoodsName" /></h4>
                         <h5 class="price"><s:property value="goodsIdSearchShow.showOnlineStore.price" /></h5>
                         <ul class="pd-ul-1" style="list-style-type:none">                    
                            <li class="pd-li"><h5 class="pd-h5">货号：<s:property value="goodsIdSearchShow.showOnlineStore.goodsId" /></h5></li>
                         </ul> 
                         <ul class="pd-ul-2" style="list-style-type:none">
                            <li class="pd-li"><h5 class="pd-h5">点赞：2986</h5></li>
                            <li class="pd-li"><h5 class="pd-h5">品牌：<s:property value="goodsIdSearchShow.showBrandName" /></h5></li>
                         </ul> 
                       </div> 
          		</div>
              </a>
      	
     </div>
     
     
     
   </div>  
  </body>
</html>
