<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%-- <%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html;charset=utf-8"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>-->
<!DOCTYPE html>
<html lang="en-US">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Untitled Document</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--     <link rel="stylesheet" type="text/css" href="./css/jquery.mobile.flatui.css" />
    <script src="./js/jquery.js"></script>
    <script src="./js/jquery.mobile-1.4.0-rc.1.js"></script> -->
<!--     <link rel="stylesheet" href="./css/idangerous.swiper.css">
     <link rel="stylesheet" href="./css/personal/personal.css" type="text/css" />  -->
     
     <link rel="stylesheet" type="text/css" href="./css/p-detail/jquery.mobile.flatui.css" />
     <script src="./js/p-detail/jquery.js"></script>
     <script src="./js/p-detail/jquery.mobile-1.4.0-rc.1.js"></script>
 	 <script src="./js/p-detail/p-detail.js"></script>

    <link rel="stylesheet" href="./css/idangerous.swiper.css">
    <link rel="stylesheet" href="./css/p-detail/p-detail.css" type="text/css" />
         
   <style type="text/css">
		body{margin:0;font-family:"microsoft yahei";font-size:13px;line-height:1.5;background:#eee;}
		
		.wrap{margin:1em auto 0 auto;}
		.tabs{height:40px;width:105%;}
		.tabs a{display:block;float:left;width:50%;color:#77DBD9;text-align:center;background:#F5F5F5;line-height:40px;font-size:16px;text-decoration:none;/*border:1px solid #77DBD9*/}
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

.animate{
display:block;
	       position: absolute;
	       z-index: 15;
	       color: #FFC0CB;
	       left: 229px;
	       top: 239px;
	       font-size: 14px;
}
.like,.collection,.repost,.unlike,.uncollection  {
			color:#666;
			font-size:12px;
			
		}
		.like {
		    float:right;
			background:url(./images/like.png) no-repeat -23px -129px;
		}
		.unlike{
		   float:right;
		   background:url(./images/likeFull.png) no-repeat -23px -129px;
		}
		.collection{
		   float:right;
		   background:url(./images/heart.png) no-repeat ;
		   background-size:20px 17px;
		   background-position:15% 18%;
		}
		.uncollection{
		   float:right;
		   background:url(./images/heartFull.png) no-repeat ;
		   background-size:20px 17px;
		   background-position:15% 18%;
		}
		.collection span,.uncollection span,.like span,.unlike span{
		   display:inline;
		   margin-left:4px;
		   text-decoration:none;
		   font-size:14px;
		}
		.unlike i,.like i,.collection i,.uncollection i,.repost i {
			
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
		.opt-table{
		  margin-top:15px;
		
		}
    </style>
</head>

<body>
<%-- <%
		//驱动程序名 
		String driverName = "com.mysql.jdbc.Driver";
		//数据库用户名 
		String userName = "root";
		//密码 
		String userPasswd = "root";
		//数据库名 
		String dbName = "whrsdb";
		//表名 
		String tableName = "article";
		//联结字符串 
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection connection = DriverManager.getConnection(url);
		Statement statement = connection.createStatement();
		String sql = "SELECT * FROM " + tableName;
		ResultSet rs = statement.executeQuery(sql);
	%> --%>
<div data-role="page" id="page" style="background:#fff"><!--#F5F5F5-->
    <!--  <div data-role="panel" id="panel" data-position="right" data-theme="a" data-display="push"></div>-->
          <div id = "header" data-role="header" data-theme="a" sytle="height:2em">  
          	   <a href="homepage.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" style="margin-left:8.2em;font-weight:100"> 美鞋详情</h1>
          </div>

   <div class="wrap">
        <div class="tabs">
            <a href="#" hidefocus="true" class="active">图集</a>
            <a href="#" hidefocus="true">导购</a>
        </div>    
        <div class="swiper-container">
           <div class="swiper-wrapper">
           
            <div class="swiper-slide">
              <div class="content-slide">
                 <div class="device">
                	 <s:iterator value="showDetail.imageList" status="statu">
                 	 	<img class="swiper" style="max-width:100%;overflow:hidden;" src="<s:property value='imageUrl' />" />
                 	 </s:iterator> 
                 </div>             
              </div>
            </div>
            
            <div class="swiper-slide">
              <div class="content-slide">
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
                    
                    <!-- 点赞和收藏 -->
                    <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:3em">
	                     <table class="opt-table" >
			                  <tr style="background:transparent;">
				                   <input type="hidden" class="shoesId" value="<s:property value="showDetail.goodId"/>" />
				                   <td style="width:40%;padding-left:1em;">
				            			<label><s:property value=""/></label>
				                   </td>
				                   <td style="width:17%" >                
				            			<a class="<s:property value="showDetail.isLiked"/>" href="#" >
				            			<i></i><span>
				            			<s:property value="showDetail.numsOfLike"/>
				            			</span>
				            			</a>
				                   </td>
				                   <td style="width:17%" >
				            			<a class="<s:property value="showDetail.isCollection"/>" href="#"  style="float:right">
				                       	 <i></i><span>
				                       	 <s:property value="showDetail.numsOfCollection"/>
				                       	 </span>
				                        </a>
				                   </td>
			                  </tr >
		                </table>
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
				         	    <%--         <c:set var="url" value="#session.onUrl"/>
				            	       <a class="on-stor-a" href="<c:url value="${url}"/>" target="_blank"></a>--%>
				            	       <a class="on-stor-a" href=<s:property  value="onlineUrl"/> target="_blank"> 
				                        <div class="on-stor-div" style="width:100%;height:3em; " >
				                           <img style="float:left;width:3em;height:3em;border-radius:100px" src="<s:property value='imgUrl' />"/><!-- class="on-stor-img" -->
				                           <div style="position:relative;left:1em"">
				                           	  <h3 style="font-size:.8em;color:#999;font-family:microsoft Yahei"><s:property value="storeName" /></h3><!-- class="on-stor-nam" -->
				                           	  <!-- <h4 class="on-stor-pric">¥159.00</h4> -->
				                              <h4 style="font-size:1em;color:#FF3366;font-family:microsoft Yahei">¥<s:property  value="price"/></h4>
				                        	</div>
				                        </div>
				                       </a>
			                  	    </li>
	                 			</s:iterator>       
	                  		</ul>
                 		 </div> <!--claps-1  -->
                    </div> <!--collapsible-set  -->
       		 	 </ul> 	
            	</div><!-- content -->
               	 
          	</div>
          </div>

          </div> <!-- swiper-wrapper -->
       </div> <!-- swiper-container -->
	</div> <!-- wrap -->
 </div> <!-- page -->

	<script type="text/javascript" src="./js/jquery-1.10.1.min.js"></script> 
    <script type="text/javascript" src="./js/idangerous.swiper.min.js"></script> 
    <script type='text/javascript' src="./js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
	
	$(document).ready(function (e) {
     $('a.praise').click(function () {

         var left = parseInt($(this).offset().left) + 10,
             top = parseInt($(this).offset().top) - 10,
             obj = $(this);
         $(this).append('<div class="praises"><b>+1<\/b></\div>');
         $('.praises').css({
             'position': 'absolute',
             'z-index': '1',
             'color': '#FFC0CB',
             'left': left + 'px',
             'top': top + 'px'
         }).animate({
             top: top - 10,
             left: left + 10
         }, 'slow', function () {
             $(this).fadeIn('fast').remove();
             var Num = parseInt(obj.find('span').text());
             Num++;
             obj.find('span').text(Num);

         });
         return false;
     });
 });
 
   var tabsSwiper = new Swiper('.swiper-container',{
        speed:500,
        onSlideChangeStart: function(){
            $(".tabs .active").removeClass('active');
            $(".tabs a").eq(tabsSwiper.activeIndex).addClass('active');
        }
    });
    
    $(".tabs a").on('touchstart mousedown',function(e){
        e.preventDefault()
        $(".tabs .active").removeClass('active');
        $(this).addClass('active');
        tabsSwiper.swipeTo($(this).index());
    });
    
    $(".tabs a").click(function(e){
        e.preventDefault();
    });
    </script>
   </body>
</html>
