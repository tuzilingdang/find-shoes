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
    <link rel="stylesheet" href="./css/p-detail/p-detail.css" type="text/css" />
  <!--    <link rel="stylesheet" href="../压缩包/Swiper-master/dist/idangerous.swiper.css"> -->
</head>

<body>
    <div data-role="page" id="page" >
  	     <div id = "header" data-role="header" data-theme="a">  
          	   <a href="homepage.jsp" target="_blank" style=" background-color: transparent;border:none">
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
                             <h4 class="attr-nam">&nbsp货号</h4><h4 class="attr-val"><s:property value="showDetail.shoe.goodsId" /></h4>
                        </div>
                    </div>  
                    
                    <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
                        <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                            <div class ="content-3_block_title"><h4 class="attr-nam">跟高</h4><h4 class="attr-val"><s:property value="showDetail.shoe.heelHeight" /></h4> </div>               
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">颜色</h4><h4 class="attr-val">棕色|黑色|卡其色</h4>
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
                           <h4 class="attr-nam">鞋头</h4><h4 class="attr-val"><s:property value="showDetail.shoe.toe" /></h4>               
                        </div>
                        <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                             <h4 class="attr-nam">跟型</h4><h4 class="attr-val"><s:property value="showDetail.shoe.heelStyle" /></h4>
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
	                     <a class="on-stor-a" href=<s:property  value="onlineUrl"/> target="_blank">
	                        <div class="on-stor-div" style="width:100%;height:3em; " >
	                            <img class="on-stor-img" src="<s:property value="img_url" />"/>
	                            <p class="on-stor-nam"><s:property value="store_name" /></p>
	                            <h4 class="on-stor-pric">¥<s:property  value="price"/></h4>
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
                <h3>京东商城</h3>
                <ul data-role="listview" data-inset="true" data-theme="c">
                    <li class="on-stor-li">
                    <a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em; " >
                            <img class="on-stor-img" src="./images/店铺详情/大东店铺图片.jpg"/>
                            <p class="on-stor-nam">Dusto旗舰店</p>
                          <!--  <h4 class="on-stor-pric">¥159.00</h4>-->
                        </div>
                    </a></li>
                    
                    <li class="on-stor-li">
					<a class="on-stor-a" href="#">
                        <div class="on-stor-div" style="width:100%;height:3em">
                            <img class="on-stor-img" src="./images/店铺详情/热风.jpg"/>
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
                            <img class="on-stor-img" src="../images/店铺详情/热风.jpg"/>
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
   <script src="./js/jquery-1.10.1.min.js"></script>
		 <script src="./js/idangerous.swiper.min.js"></script>
      <script>
		 var mySwiper = new Swiper('.swiper-container',{
			pagination: '.pagination',
			paginationClickable: true,
			centeredSlides: true,
			slidesPerView: 'auto'
		  })
      </script>

</html>

