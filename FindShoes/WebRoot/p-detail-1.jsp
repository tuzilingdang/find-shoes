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
    <!--  <div data-role="panel" id="panel" data-position="right" data-theme="a" data-display="push"></div>-->
          <div id = "header" data-role="header" data-theme="a">  
              <a href="homepage.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" > 鞋子详情 </h1>
          </div> <!---->     
      
          
           <div data-role="content" role="main">
              <div  data-role="navbar" class="navbar"  >
                <ul>
                  <li class="navbar-li"><a href="#" target="_blank" id = "navbar-a1"><h2>图集</h2></a></li>
                  <li class="navbar-li"><a href="p-detail-2.jsp" target="_blank" id = "navbar-a2"><h2>导购</h2></a></li>
                </ul>
              </div>  
           </div>
         
              <div class="device">
    <!--              <a class="arrow-left" href="#"></a> 
                  <a class="arrow-right" href="#"></a>-->
<!--                   <div class="swiper-container">
                    <div class="swiper-wrapper"> --> 
                    <!-- <img class="swiper" style="max-width:100%;overflow:hidden;" src="http://img03.taobaocdn.com/imgextra/i3/1764377618/T23JkHXg4bXXXXXXXX_!!1764377618.jpg" /> -->
                                      <img class="swiper" style="max-width:100%;overflow:hidden;" src="<s:property value="#session.imgUrl" />" />
<!--                                       <img class="swiper" style="max-width:100%;overflow:hidden;"  src="http://img01.taobaocdn.com/imgextra/i1/1706829011/TB21qPiapXXXXcIXXXXXXXXXXXX-1706829011.jpg" /> 
                                      <img class="swiper" style="max-width:100%;overflow:hidden;" src="http://img02.taobaocdn.com/imgextra/i2/1879766137/TB24SeBaVXXXXboXXXXXXXXXXXX_!!1879766137.jpg" />
                                      <img class="swiper"  style="max-width:100%;overflow:hidden;" src="http://img01.taobaocdn.com/imgextra/i1/1879198687/T2z0HzXT4XXXXXXXXX_!!1879198687.jpg" /> 
                                      <img class="swiper"  style="max-width:100%;overflow:hidden;" src="http://img01.taobaocdn.com/imgextra/i1/1879198687/TB2IItFapXXXXcgXXXXXXXXXXXX-1879198687.jpg" /> -->  


<!-- --> 

                   

<!--                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/5.jpg" />
                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/6.jpg" />
                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/7.jpg" />
                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/8.jpg" />
                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/9.jpg" />
                          <img class="swiper-slide blue-slide" src="../images/鞋子详情/10.jpg" />-->
                   <!--   </div>
                      <div class="pagination"></div>	-->
 <!--                  </div>
                   
              </div>  -->      
   	     </div>
 
   </div>   
</body>
   <script src="../压缩包/Swiper-master/js/jquery-1.10.1.min.js"></script>
		 <script src="../压缩包/Swiper-master/dist/idangerous.swiper.min.js"></script>
      <script>
	  /*img in the middle*/
/*		 var mySwiper = new Swiper('.swiper-container',{
			pagination: '.pagination',
			paginationClickable: true,
			centeredSlides: true,
			slidesPerView: 'auto'
		  })*/
		  
	  var mySwiper = new Swiper('.swiper-container',{
		pagination: '.pagination',
		paginationClickable: true,
		mode: 'vertical'
	  })	  
		  
      </script>

</html>
