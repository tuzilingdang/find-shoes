<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <base href="<%=basePath%>">
	<title>product detail</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
     <link rel="stylesheet" type="text/css" href="./css/p-detail/jquery.mobile.flatui.css" />
     <script src="./js/p-detail/jquery.js"></script>
     <script src="./js/p-detail/jquery.mobile-1.4.0-rc.1.js"></script>

    <link rel="stylesheet" href="./css/idangerous.swiper.css">
    <link rel="stylesheet" href="./css/p-detail/p-detail.css" type="text/css" />
  <!--    <link rel="stylesheet" href="../压缩包/Swiper-master/dist/idangerous.swiper.css"> -->
  
     <style type="text/css">
		body{margin:0;font-family:"microsoft yahei";font-size:13px;line-height:1.5;background:#eee;}
		
		.wrap{margin:1em auto 0 auto;}
		.tabs{height:40px;width:105%;}
		.tabs a{display:block;float:left;width:32.5%;color:#77DBD9;text-align:center;background:#F5F5F5;line-height:40px;font-size:16px;text-decoration:none;/*border:1px solid #77DBD9*/}
		.tabs a.active{color:#fff;background:#77DBD9;border-radius:5px 5px 0px 0px;}
		.swiper-container{background:transparent; height:auto;px;width:105%;border-top:0;}/*background:#F1FCFC*/
		.swiper-slide{height:auto;width:95%;background:#FFF;color:#fff;}
		.content-slide{padding:0px;width:95%;}
		.content-slide p{line-height:1.9;font-size:1em;font-weight:100; font-family:Microsoft YaHei,Arial, Helvetica, sans-serif; color:#999;text-align:left;/*padding-right:1em;position:relative;left:.5em;*/padding-right:1em}
	/*	.user-opt{font-size:.6em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#999;text-align:center;}*/
		.content-slide h2{font-size:1.1em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:left;}
		.content-slide .content-table{padding:1em 1em 0em 1em;background:transparent;}
		.content-slide .opt-table{width:95%;background:transparent;border-bottom: 1px solid #F5F5F5;padding-bottom:0.5em;}
		.content-slide .opt-table label{font-size:.8em;color:#999;font-family:font-family:Microsoft YaHei Arial, Helvetica, sans-serif;position:relative;bottom:-.5em;}
		
		.praise {
			color:#666;
			font-size:12px;
		}
		.praise i {
			
			box-orient: vertical;
			-moz-box-orient: vertical;
			-webkit-box-orient: vertical;
			-ms-box-orient: vertical;
			background-repeat: no-repeat;
			display: inline-block;
			height: 18px;
			vertical-align: middle;
			width: 18px;
			padding-left:5px;
}
		
    </style>
</head>

<body>
    <div data-role="page" id="page" >
  	     <div id = "header" data-role="header" data-theme="a">  
          	   <a href="homepage-login.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" >美鞋详情 </h1>
          </div>   
      
   
   
          <div data-role="content" role="main">
          	<div  data-role="navbar" class="navbar"  >
              <ul>
                <li class="navbar-li"><a href="p-detail-1.jsp"  target="_blank" id = "navbar-a1"><h2>图集</h2></a></li>
                <li class="navbar-li"><a href="#"  target="_blank" id = "navbar-a2"><h2>导购</h2></a></li>
              </ul>
            </div>  
   	     </div>
         
         <div data-role="content" role="main">   
         
            <ul data-role="listview" data-inset="true">
                <li data-role="list-divider" data-theme="a" ><h3 class="list-nam">美鞋信息</h3></li>

                    <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                            <h4 class="attr-nam">品牌</h4><h4 class="attr-val"><s:property value="showDetail.brandName" /></h4>              
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">&nbsp货号</h4><h4 class="attr-val"><s:property value="showDetail.goodId" /></h4>
                        </div>
                    </div>  
                    
                    <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                            <div class ="content-3_block_title"><h4 class="attr-nam">跟高</h4><h4 class="attr-val"><s:property value="showDetail.heelHeight" /></h4> </div>               
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">颜色</h4><h4 class="attr-val"><s:property value="showDetail.color" /></h4>
                        </div>
                    </div>  
                    
                     <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                            <h4 class="attr-nam">场合</h4><h4 class="attr-val"><s:property value="showDetail.occasionName" /></h4>              
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">风格</h4><h4 class="attr-val"><s:property value="showDetail.styleName" /></h4>
                        </div>
                    </div>
                    
                    <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                           <h4 class="attr-nam">鞋头</h4><h4 class="attr-val"><s:property value="showDetail.toeName" /></h4>               
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">跟型</h4><h4 class="attr-val">粗跟</h4>
                        </div>
                    </div>
                
                	  <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                            <h4 class="attr-nam">皮质特征</h4><h4 class="attr-val"><s:property value="showDetail.leatherName" /></h4>                
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                            <h4 class="attr-nam">鞋底材质</h4><h4 class="attr-val"><s:property value="showDetail.soleName" /></h4>
                        </div>
                    </div>  
            </ul>    	 
     </div>
     
      <div data-role="content" class="content-2" role="main">       
          <ul data-role="listview" data-inset="true">
              <li data-role="list-divider" data-theme="a" ><h3 class="list-nam">购鞋信息</h3></li> <!-- .ui-listview > li h3, -->
             <div data-role="collapsible-set" data-theme="c" data-content-theme="b">
             
              <div class="claps-1" data-role="collapsible" data-collapsed-icon="flat-cmd" data-expanded-icon="flat-cross" data-collapsed="false">		
                <h3>当当网</h3>
                 <ul data-role="listview" data-inset="true" data-theme="c">
                  	<s:iterator value="showDetail.dangdangList" status="var">
	                    <li class="on-stor-li">
	                     <c:set var="url" value="#session.onUrl"/>
	                    <a class="on-stor-a" href="<c:url value="${url}"/>" target="_blank">
	                     <a class="on-stor-a" href=<s:property  value="onlineUrl"/> target="_blank">
	                        <div class="on-stor-div" style="width:100%;height:3em; " >
	                           <img style="float:left;width:3em;height:3em;border-radius:100px" src="<s:property value="store_img" />"/><!-- class="on-stor-img" -->
	                           <div style="position:relative;left:1em"">
	                           	  <p style="font-size:.8em;color:#999;font-family:microsoft Yahei"><s:property value="store_name" /></p><!-- class="on-stor-nam" -->
	                           	  <!-- <h4 class="on-stor-pric">¥159.00</h4> -->
	                              <h4 style="font-size:1em;color:#FF3366;font-family:microsoft Yahei">¥<s:property  value="price"/></h4>
	                        	</div>
	                    </a></li>
                 	</s:iterator>       
                  </ul>
              </div>
              
              <div data-role="collapsible" data-collapsed-icon="flat-cmd" data-expanded-icon="flat-cross">
                <h3>淘宝商城</h3>
                <ul data-role="listview" data-inset="true" data-theme="c">
                    <li class="on-stor-li">
                    <a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em; " >
                            <img style="width:3em;height:3em;border-radius:100px" src="../images/店铺详情/热风.jpg"/><!-- class="on-stor-img" -->
                            <p class="on-stor-nam">Dusto旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
                    
                    <li class="on-stor-li">
					<a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em">
                            <img class="on-stor-img" src="../images/店铺详情/热风.jpg"/>
                            <p class="on-stor-nam">热风旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
              </div>
              
              <div data-role="collapsible" data-collapsed-icon="flat-cmd" data-expanded-icon="flat-cross">
                <h3>京东商城</h3>
                <ul data-role="listview" data-inset="true" data-theme="c">
                    <li class="on-stor-li">
                    <a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em; " >
                            <img class="on-stor-img" src="../images/店铺详情/大东店铺图片.jpg"/>
                            <p class="on-stor-nam">Dusto旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
                    
                    <li class="on-stor-li">
					<a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em">
                            <img class="on-stor-img" src="../images/店铺详情/热风.jpg"/>
                            <p class="on-stor-nam">热风旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
              </div>
              
               <div data-role="collapsible" data-collapsed-icon="flat-cmd" data-expanded-icon="flat-cross">
                <h3>优购网</h3>
                <ul data-role="listview" data-inset="true" data-theme="c">
                    <li class="on-stor-li">
                    <a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em; " >
                            <img class="on-stor-img" src="../images/店铺详情/大东店铺图片.jpg"/>
                            <p class="on-stor-nam">Dusto旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
                    
                    <li class="on-stor-li">
					<a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em">
                            <img style="width:3em;height:3em;border-radius:100px" src="../images/店铺详情/热风.jpg"/><!-- class="on-stor-img" -->
                            <p class="on-stor-nam">热风旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
              </div>
              
            </div>
         </ul> 	
      </div> 
 
   </div>   
</body>
   <script src="file:///C|/Users/123/压缩包/Swiper-master/js/jquery-1.10.1.min.js"></script>
		 <script src="file:///C|/Users/123/压缩包/Swiper-master/dist/idangerous.swiper.min.js"></script>
      <script>
		 var mySwiper = new Swiper('.swiper-container',{
			pagination: '.pagination',
			paginationClickable: true,
			centeredSlides: true,
			slidesPerView: 'auto'
		  })
      </script>

</html>

