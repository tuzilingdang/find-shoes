<%@page import="com.model.Article"%>
<%@page import="com.dao.ArticleDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%> 

<%-- <%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path+ "/";
%> --%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	     <base href="<%=basePath%>">
	     
	     <title>Home</title>
	     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  />
        <link href="./css/homepage/jquery.mobile.flatui.css"  rel="stylesheet" type="text/css" /> 
        <link href="./css/homepage/home-page.css"  rel="stylesheet"  type="text/css"/>
        <link href="./css/homepage/elastislide.css" rel="stylesheet" type="text/css"  />
		<link href="./css/homepage/custom.css" rel="stylesheet" type="text/css"  />        
        <link href="./css/homepage/idangerous.swiper.css" rel="stylesheet" type="text/css">
        
        <script src="./js/homepage/jquery.mobile-1.4.0-rc.1.js"></script>
        <script src="./js/homepage/jquery-1.6.4.min.js" type="text/javascript"></script>
<!--    <script src="./js/homepage/jquery.mobile-1.3.2.min.js" type="text/javascript"></script> -->
		<script src="./js/homepage/modernizr.custom.17475.js" type="text/javascript"></script>
		<link rel="stylesheet" href="./css/homepage/homepage.css" type="text/css" />
		<script src="./js/homepage/homepage.js" type="text/javascript"></script>
<!-- 	    <script src="./js/classify-find/classify-find.js" type="text/javascript"></script> -->
		<script src="./js/homepage/homepage.js" type="text/javascript"></script>
		<script language="javascript" type="text/javascript">		
            function  showval(){  
            /* 	getUrl('达芙妮'); */
           		// alert(document.URL);
			    var args = new Array();
				var thisURL = document.URL;    
 				var  getval =thisURL.split('*')[1];   		
							
				if ( getval == null ){
					getval ="ECCO";
/* 					var getval = getval != '' ? encodeURI(encodeURI(getval)) : ''; */
					getUrl(getval);
				}	
				else
					getUrl( getval);
  			}  
            
            					
			function clear_all(){
				document.location.href = "./classify-find.jsp";
				} 
            //获取幻灯片显示的图片url
       function getUrl(brandName){ 
	/* 		alert(brandName); */
	      $.ajax({
	    	type:"GET",
	        url:"loadImgUrl.action",
	        data:{brand:brandName},
	        dataType:"json",
	        success:function(msg){        	  
	        		//$("#flag").val("true");
	        		//console.log("msg.showShoesImgsList.size()"+msg.showShoesImgsList[0].img_url);
	        		if(msg.showShoesImgsList != null){
	        			console.log("msg.showShoesImgsList.size()"+msg.showShoesImgsList[0].img_url);
		        		$("#ui-block-p-brand").html(msg.showShoesImgsList[0].brand);
		            	for(var i=0;i<msg.showShoesImgsList.length;i++){
	 	        			$(".newShoes").eq(i).attr("src",msg.showShoesImgsList[i].img_url);
		        			$(".newShoesA").eq(i).attr("href","goodsDetail.action?gid="+msg.showShoesImgsList[i].goods_id); 
	        			}
	        		}
	        		else{
	        			alert("该品牌没有新款呦，请查看其他品牌");
	        			document.location.href  ="./homepage.jsp";
	        		}
	            	//$("#ui-block-p-brand").html(msg.showShoesImgsList[0].brand);
	        },
	        error: function(){
	        	alert("该品牌没有新款呦，请查看其他品牌");
	        	document.location.href  ="./homepage.jsp";
	       		return false;
	       }
	    });
   	  }
          //监听品牌选择的checkbox，当选中的时候将隐藏的brandName参数设置为该值  
       $("input[name='0000']").live('click', function() {
    	   if($(this).prop("checked")==true){   
    		   $("#brandName").val($(this).val());
    		  // alert($("#brandName").val());
           }else{   
        	  $("#brandName").val('彼艾/BIAI');
           }   
    	});
           
          function changeImg(){
        	  getUrl($("#brandName").val()); 	  
          }
          
         function getArticleId(){
        	 
         } 
   	    </script>   
	</head> 
	
	 
	<body  onload="showval()" style="margin:0px 0px 0px 0px"> 	
	    <div id = "header" data-role="header" data-theme="b"> 
	       <h1 id = "title" style="margin-left:.5em;"  >Tita <!-- <a  id = "addrTitle" >广州></a> -->
	       	  <a data-ajax="false" href="personal.action" target="_blank" id = "login" style="margin-left:7em; ">
	       	  		<img style="height:1.5em;width:1.5em;left:7em; padding-top:.5em" src="./images/homepage/user3-white.png"/>
	       	  </a> 
	       </h1>
	    </div>

       <div id = "home-page" data-role="page"  style="margin:0px 0px 0px 0px" >
            <div data-role="content"    class="ui-content_1" >
<!--                   <a class="arrow-left" href="#"></a> 
                  <a class="arrow-right" href="#"></a> -->
                   <div class="swiper-container">
                 	  <div class="swiper-wrapper">  
<!--                          <a href="#" target="_blank"><img class="swiper-slide blue-slide" src="images/home_page-camara/0.jpg" /></a>
                          <a href="#" target="_blank"><img class="swiper-slide blue-slide" src="images/home_page-camara/3.jpg" /></a>
                          <a href="#" target="_blank"><img class="swiper-slide blue-slide" src="images/home_page-camara/4.jpg" /></a>
                          <a href="#" target="_blank"><img class="swiper-slide blue-slide" src="images/home_page-camara/5.jpg" /></a>-->
                         <%
                              ArticleDAO articleDAO = new ArticleDAO();
                              List<Article> articleList = new ArrayList<Article>();
                             articleList = articleDAO.getArticlesForIndex();
                              int articleLength = articleList.size();
                              System.out.println("articleList.size() == "+articleList.size());
                              for(int i =0;i<articleLength;i++){
                              	  System.out.println("articletemp.getImgPath() == ");
                            	  Article articletemp = articleList.get(i);
                            	  System.out.println("articletemp.getImgPath() == "+articletemp.getImgPath());
                         %>
                          <a href="showArticleShoes.action?articleId=<%=articletemp.getArticalId() %>" class="swiper-slide blue-slide">
                          <img class="swiper-slide blue-slide" style="width:100%;height:12.5em;" src="<%=articletemp.getImgPath() %>" />
                          </a>
                         
                        <%
                              }
                        %>
                          
                      </div>
                      <div class="pagination"></div>	
                   </div>                     
                <div data-role="ui-grid-c" class="ui-grid-c" data-theme="f" style="height:5.1em">
                    <div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="productNum.jsp" target="_blank"><img src="./images/homepage/home_page-icon-gray-256/barcode-256.png" /></a>
                         <h4 class="icon_name" style="margin-top:.35em;fond-size:.8em;font-family:Microsoft YaHei;">货号寻找</h4>                
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="classify-find.jsp" ><img src="./images/homepage/home_page-icon-gray-256/home-5-256.png" /></a>
                         <h4 class="icon_name" style="margin-top:.35em;fond-size:.8em;font-family:Microsoft YaHei;">分类寻找</h4>
                    </div>
                    <div data-role="ui-block-c" class="ui-block-c" style="height:100%">
                        <a href="Article.action" target="_blank"><img src="./images/homepage/home_page-icon-gray-256/inbox-5-256.png" /></a>
                        <h4 class="icon_name" style="margin-top:.35em;fond-size:.8em;font-family:Microsoft YaHei;">看看</h4>
                    </div>
                    <div data-role="ui-block-d" class="ui-block-d" style="height:100%">
                        <a href="off-store.jsp" target="_blank"><img src="./images/homepage/home_page-icon-gray-256/newspaper-12-256.png" /></a>
                        <h4 class="icon_name" style="margin-top:.35em;fond-size:.8em;font-family:Microsoft YaHei;">线下商店</h4>
                    </div>          
               </div>
               
            </div>
            
<!--                 <div data-role="ui-grid-solo" class="ui-grid-solo-1"  data-theme="a"  onclick=" btnPop_onclick('brand')">
                
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                       		 <h4 class="icon_name">品牌选择 <p class="ui-block-p" id="ui-block-p-brand"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                             <input type="hidden" name="ckBrand" id="ckbrand" />
                        </div>         
                </div> -->
            
            <div data-role="content"   class="ui-content_2" >
            	<div class ="content_title"><h2 class="content_title-h2">2015新款速递
            		<button id="ui-block-p-brand" style="float:right;padding-top:.3em; background-color:transparent;font-size:.55em;color:#EEA9B8;border:none" 
            			value="选择品牌" onclick="javascript:window.location.href='ch-brand.jsp'">
            		选择品牌</button></h2>
          		
				</div>
				
                <div class="container demo-1" style="height:5.5em">
                  <div class="main">
                      <header class="clearfix"></header>			
                      <ul id="carousel" class="elastislide-list">
                          <li><a class="newShoesA" href=""><img style="width:3rem; height:3rem;" class="newShoes" alt="image01" /></a></li>
                          <li><a class="newShoesA" href=""><img class="newShoes" alt="image02" /></a></li>
                          <li><a class="newShoesA" href=""><img class="newShoes" alt="image03" /></a></li>
                          <li><a class="newShoesA" href=""><img class="newShoes" alt="image04" /></a></li>
                          <li><a class="newShoesA" href=""><img class="newShoes" alt="image05" /></a></li>
                          <li><a class="newShoesA" href=""><img src="./images/homepage/new_post/6.jpg" alt="image06" /></a></li>
<!--                      <li><a href="#"><img src="images/new_post/7.jpg" alt="image07" /></a></li>
                          <li><a href="#"><img src="images/new_post/8.jpg" alt="image08" /></a></li>
                          <li><a href="#"><img src="images/new_post/9.jpg" alt="image09" /></a></li>
                          <li><a href="#"><img src="images/new_post/10.jpg" alt="image10" /></a></li>
                          <li><a href="#"><img src="images/new_post/11.jpg" alt="image11" /></a></li>
                          <li><a href="#"><img src="images/new_post/12.jpg" alt="image12" /></a></li>
                          <li><a href="#"><img src="images/new_post/13.jpg" alt="image13" /></a></li>
                          <li><a href="#"><img src="images/new_post/14.jpg" alt="image14" /></a></li>
                          <li><a href="#"><img src="images/new_post/15.jpg" alt="image15" /></a></li>
                          <li><a href="#"><img src="images/new_post/16.jpg" alt="image16" /></a></li>
                          <li><a href="#"><img src="images/new_post/17.jpg" alt="image17" /></a></li>
                          <li><a href="#"><img src="images/new_post/18.jpg" alt="image18" /></a></li>
                          <li><a href="#"><img src="images/new_post/19.jpg" alt="image19" /></a></li>
                          <li><a href="#"><img src="images/new_post/20.jpg" alt="image20" /></a></li>-->
                      </ul>
                  </div>
               </div>
            </div>
            
            
            <div data-role="content"    class="ui-content_3"  style="position:relative; top:2.5em">
            
            	<div class ="content_title"><h2>人气热款</h2></div>
            	<div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=555" target="_blank"><img src="./images/homepage/Tita/555.JPG" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">hamboo中跟女鞋</h4></div>    
                        <!--<div class ="content-3_block_price">--><h4 class="price">￥238</h4><!--</div>-->                   
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=001" target="_blank"><img src="./images/homepage/new_post/8.jpg" alt="image8" /></a> 
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div>
                         <h4 class="price">￥369</h4>
                    </div>
                </div>    
                  
                <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=000265" target="_blank"><img src="./images/homepage/new_post/9.jpg" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">卓诗尼秋季漆皮浅口坡跟</h4></div>
                        <h4 class="price">￥269</h4>                
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=00111" target="_blank"><img src="./images/homepage/new_post/10.jpg" alt="image8" /></a>
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div> 
                         <h4 class="price">￥88</h4>
                    </div>    
                </div>
                
                 <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=003" target="_blank"><img src="./images/homepage/new_post/11.jpg" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">卓诗尼秋季漆皮浅口坡跟</h4></div> 
                        <h4 class="price">￥169</h4>               
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=00603" target="_blank"><img src="./images/homepage/new_post/12.jpg" alt="image8" /></a> 
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div> 
                         <h4 class="price">￥169</h4>
                    </div>    
                </div>
                
                 <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=0093" target="_blank"><img src="./images/homepage/new_post/13.jpg" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">卓诗尼秋季漆皮浅口坡跟</h4></div>  
                        <h4 class="price">￥169</h4>              
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=0102-8" target="_blank"><img src="./images/homepage/new_post/14.jpg" alt="image8" /></a>
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div>
                         <h4 class="price">￥169</h4> 
                    </div>    
                </div>
                
                 <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=013" target="_blank"><img src="./images/homepage/new_post/14.jpg" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">卓诗尼秋季漆皮浅口坡跟</h4></div>   
                        <h4 class="price">￥169</h4>             
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=017" target="_blank"><img src="./images/homepage/new_post/15.jpg" alt="image8" /></a>
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div> 
                         <h4 class="price">￥169</h4>
                    </div>    
                </div>
                
                 <div data-role="ui-grid-a" class="ui-grid-a" data-theme="f" style="height:12em">
                	<div data-role="ui-block-a" class="ui-block-a" style="height:100%">
                        <a href="goodsDetail.action?gid=018" target="_blank"><img src="./images/homepage/Tita/018.JPG" alt="image07" /></a>
                        <div class ="content-3_block_title"><h4 class="icon_name">卓诗尼秋季漆皮浅口坡跟</h4></div>    
                        <h4 class="price">￥169</h4>            
                    </div>
                    <div data-role="ui-block-b" class="ui-block-b" style="height:100%">
                         <a href="goodsDetail.action?gid=019" target="_blank"><img src="./images/homepage/new_post/17.jpg" alt="image8" /></a>
                         <div class ="content-3_block_title"><h4 class="icon_name">他他秋季牛皮高跟单鞋</h4></div> 
                         <h4 class="price">￥169</h4>
                    </div>    
                </div>
                
            </div>
            <div id = "footer" data-role="footer"  style="position:relative; top: 1em">  
                <h1 id = "footer-title" >查看更多热款 </h1>
            </div>
            
            <div id="last-footer"><h3><a class="aType" href="login.jsp">登录</a>
            |<a class="aType" href="tel-regist.jsp">注册</a></h3></div>
            
		</div>
		
		
  <%-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>  --%>
		<script type="text/javascript" src="./js/homepage/jquerypp.custom.js"></script>
		<script type="text/javascript" src="./js/homepage/jquery.elastislide.js"></script>	
		<script type="text/javascript">			
			$( '#carousel' ).elastislide();		
		</script>
		
        
         <script src="./js/homepage/jquery-1.10.1.min.js"></script>
	    <script type="text/javascript"  src="./js/homepage/idangerous.swiper.min.js"></script>
        <script>
			var mySwiper = new Swiper('.swiper-container',{
			  pagination: '.pagination',
			  loop:true,
			  grabCursor: true,
			  paginationClickable: true
			})
        </script>
        
	</body>
</html>