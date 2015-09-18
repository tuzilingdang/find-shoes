<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  />
        <title>classify find </title>
        <link rel="stylesheet" href="./css/jquery.mobile-theme-f.min.css" type="text/css" />
        <link rel="stylesheet" href="./css/classify-find.css" type="text/css" />
        <link rel="stylesheet" href="./css/search-result.css" type="text/css" /> 
          <link rel="stylesheet" href="./css/pager.css" type="text/css" /> 
        <script src="./js/classify-find/jquery-1.11.1.js" type="text/javascript"></script>
        <script src="./js/classify-find/classify-find.js" type="text/javascript"></script>
        <script src="./js/classify-find/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>
        <script language="javascript" type="text/javascript">		
            function  showval(){  
			    var args = new Array();
				var thisURL = document.URL;    
 				var  getval =thisURL.split('*')[1];   		
				var pairs = getval.split("&");
			for (var i = 0; i < pairs.length; i++) { 
                var pos = pairs[i].indexOf('='); // look for "name=value" 
                if (pos == -1) continue; // if not found, skip 
                var argname = pairs[i].substring(0, pos); // extract the name 
                var value = pairs[i].substring(pos + 1); // extract the value 
                value = decodeURIComponent(value); // decode it, if needed 
                args[argname] = value; // store as a property
                 
				if (argname=="brand"){
					document.getElementById('ui-block-p-brand').innerHTML=value;
					document.getElementById("ckbrand").value=value;
				}
				
				else if (argname=="season"){
					document.getElementById('ui-block-p-season').innerHTML=value;
					document.getElementById("ckseason").value=value;
				}
				
				else if (argname=="price") {
					document.getElementById('ui-block-p-price').innerHTML=value;
					document.getElementById("ckprice").value=value;
				}
				
				else if (argname=="hotwords"){//选购热点
					document.getElementById('ui-block-p-hotword').innerHTML=value;document.getElementById('ui-block-p-hotword').innerHTML=value;
					document.getElementById("ckhotpoint").value=value;
				}
				
				else if (argname=="height"){//跟高
					document.getElementById('ui-block-p-height').innerHTML=value;
					document.getElementById("ckheelheight").value=value;
				}
				
				else if (argname=="pop"){//流行元素
					document.getElementById('ui-block-p-pop').innerHTML=value;
					document.getElementById("ckfashion").value=value;
				}
				
				else if (argname=="occasion"){
					document.getElementById('ui-block-p-occasion').innerHTML=value;
					document.getElementById("ckoccasion").value=value;
				}
				
				if (argname=="style"){
					document.getElementById('ui-block-p-style').innerHTML=value;
					document.getElementById("ckstyle").value=value;
				}
				
				if (argname=="toecap"){
					document.getElementById('ui-block-p-toecap').innerHTML=value;
					document.getElementById("cktoe").value=value;
				}
				
				if (argname=="heeltype"){//跟型
					document.getElementById('ui-block-p-heeltype').innerHTML=value;
					document.getElementById("ckheelstyle").value=value;
				}
				
				if (argname=="leather_f"){//皮质特征
					document.getElementById('ui-block-p-leather_f').innerHTML=value;
					document.getElementById("ckleather").value=value;
				}
				
				if (argname=="bottom_material"){//鞋底材质
					document.getElementById('ui-block-p-bottom_material').innerHTML=value;
					document.getElementById("cksole").value=value;
				}
				
				if (argname=="upper_h"){//沿口高度
					document.getElementById('ui-block-p-upper_h').innerHTML=value;
					document.getElementById("ckupperheight").value=value;
				}
				
            }
					
			function clear_all(){
				document.location.href = "./classify-find.jsp";
				}
  			}  
   	    </script>         
    </head>
    
       <body onload="showval()">
      
       <div class = "page" id = "page" data-role="page"  >          
             <div id = "header" data-role="header" data-theme="f">  
                <a href="homepage.jsp" target="_blank"><img src="images/arrow-118-48.ico"/></a>
                <h1 id = "title" >分类寻找 </h1>
            </div> 
          
            <div data-role="content" class="content_1" data-theme="c">
             <form action="classifyFindGoods.action" data-ajax="false" method='post' >
          		<div data-role="ui-grid-solo" class="ui-grid-solo-1"  data-theme="a"  onclick=" btnPop_onclick('brand')">                
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                       		 <h4 class="icon_name">品牌&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-brand"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                             <input type="hidden" name="ckBrand" id="ckbrand" />
                        </div>         
                </div>
                
                <div id="solo" data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  onclick=" btnPop_onclick('season')">
                        <div data-role="ui-block-a"  class="ui-block-a-1"> 
                       		 <h4 class="icon_name">季节&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-season"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckSeason" id="ckseason" />
                        </div>         
                </div>
                
                <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"  onclick="btnPop_onclick('price')">        	  
                        <div data-role="ui-block-a"  class="ui-block-a-1">
                            <h4 class="icon_name">价格&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-price"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckPrice" id="ckprice" />
                        </div>    
                </div>
                
<!--                 <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f" onclick=" btnPop_onclick('hotwords')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">选购热点<p class="ui-block-p" id="ui-block-p-hotword"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckHotPoint" id="ckhotpoint" />
                        </div>                             
                </div> -->
                             
             	<input id="btnDisplay1" type="button" value="更多" onclick="changeDisplay('more')"/>                
                <div id= "div-folder" style="display: none;"  >
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('height')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">跟高&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-height"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckHeelHeight" id="ckheelheight" />
                        </div>      
                    </div>        
                        
                <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f" onclick="btnPop_onclick('pop')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">流行元素<p class="ui-block-p" id="ui-block-p-pop"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckFashion" id="ckfashion" />
                        </div>                             
                </div> 
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('occasion')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">场合&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-occasion"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckOccasion" id="ckoccasion" />
                        </div>      
                    </div>   
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick="btnPop_onclick('style')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">风格&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-style"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckStyle" id="ckstyle" />
                        </div>      
                    </div> 
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('toecap')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">鞋头&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-toecap"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckToe" id="cktoe" />
                        </div>      
                    </div> 
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick="btnPop_onclick('heeltype')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">跟型&nbsp&nbsp&nbsp <p class="ui-block-p" id="ui-block-p-heeltype"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckHeelStyle" id="ckheelstyle" />
                        </div>      
                    </div>  
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('leather_f')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">皮质特征<p class="ui-block-p" id="ui-block-p-leather_f"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckLeather" id="ckleather" />
                        </div>      
                    </div> 
                    
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('bottom_material')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">鞋底材质<p class="ui-block-p" id="ui-block-p-bottom_material"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckSole" id="cksole" />
                        </div>      
                    </div>              
                           
                    <div data-role="ui-grid-solo" class="ui-grid-solo-1" data-theme="f"   onclick=" btnPop_onclick('upper_h')">
                        <div data-role="ui-block-a"  class="ui-block-a-1" >
                            <h4 class="icon_name">沿口高度<p class="ui-block-p" id="ui-block-p-upper_h"><img src="./images/arrow487.png" class="icon-img"/></p>
                            </h4>
                            <input type="hidden" name="ckUpperHeight" id="ckupperheight" />
                        </div>      
                    </div>    
                </div>  
                
                <div id="ui-grid-solo-btn" data-role="ui-grid-solo"  data-theme="f"  >
               		 <input id="confirm-button" type="submit" value="确定" />  
<!--                     <input id="clear-button" type='button' value="清除"  onclick="clear_all()"/>  -->
                     <input id="clear-button" type="button" value="清除"  onclick="clear_all()" />
               <!--  	 <button  id="confirm-button" type="submit" data-theme="c"  >确定</button>-->
              </div>  
             </form> 
                                     
            </div>
  
  
 <!--                		<button  id="confirm-button" type="submit"  >确定</button>
              </div>-->
                   
             
             
             
            <div data-role="content" class="content_2" data-theme="c">
             		
             		<!-- 第一次进入界面 -->
             		<s:if test="showShoesListSize==null">
             		  <div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7.5em"> 		                              
		                  <div class="pd-img-div">          		
		              	   <img class="pd-img-err" src="./images/cry.gif"/>
		                  </div>
		                  <div class="pd-text-div">
		                     <h4 class="pd-h4" style="font-size:1.1em;top:-4em">请输入关键词</h4>		                    
		                   </div>        
		      		      </div>
             		</s:if>
             		
             		<s:if test="showShoesListSize!=null">
             		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
             		</s:if>
                	<!-- 如果没有找到鞋子 -->
                	 <s:if test="showShoesListSize==0">
		                	 <div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7.5em"> 
		              	<div class="pd-img-div">          		
		              	   <img class="pd-img-err" src="./images/cry.gif"/>
		                  </div>
		                  
		                  <div class="pd-text-div">
		                     <h4 class="pd-h4" style="font-size:1.1em;top:-4em">没有您要找的鞋子！</h4>		                    
		                   </div>        
		      		      </div>
                	 </s:if> 
                	 
                	<s:iterator value="showShoesList" status="var">
	                	<a href="goodsDetail.action?gid=<s:property value="showOnlineStore.goodsId" />" target="_blank">
	              			<div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:7em"> 
	                        	<div class="pd-img-div">          		
	                        	   <img class="pd-img" src="<s:property value="showOnlineStore.imgUrl" />"/>
	                            </div>
	                            
	                            <div class="pd-text-div"> 
	                               <h4 class="pd-h4"><s:property value="showGoodsName" /></h4>
	                               <h5 class="price"><s:property value="showOnlineStore.price" /></h5>
	                               <ul class="pd-ul-1" style="list-style-type:none">                    
	                                  <li class="pd-li"><h5 class="pd-h5">货号：<s:property value="showOnlineStore.goodsId" /></h5></li>
	                               </ul> 
	                               <ul class="pd-ul-2" style="list-style-type:none">
	                                  <li class="pd-li"><h5 class="pd-h5">点赞：2986</h5></li>
	                                  <li class="pd-li"><h5 class="pd-h5">品牌：<s:property value="showBrandName" /></h5></li>
	                               </ul> 
	                             </div> 
	                		</div>
	                    </a>
                    </s:iterator>
                    <s:if test="showShoesListSize!=null">
	                    <div id="pager" >
		                    <ul class="pages">
			                    <s:if test="hasPrePage">
				                    <a href="classifyFindGoods.action?pageNow=<s:property value="pageNow-1"/>&&type=page" target="_self">		                  
				                    <li class="" >上一页</li>		                    
				                    </a>
			                    </s:if>
			                    <s:else>
			                    	<li class="pgEmpty">上一页</li>
			                    </s:else>
			                    <s:if test="hasNextPage">
				                    <a href="classifyFindGoods.action?pageNow=<s:property value="pageNow+1"/>&&type=page" target="_self">
				                    <li class="">下一页</li>
			                    </a>
			                    </s:if>
			                    <s:else>
			                    	<li class="pgEmpty">下一页</li>
			                    </s:else>
		                    </ul>
	                    </div>    
                    </s:if>                
              </div>
              
        </div>   
        <script language="javascript" type="text/javascript">
        	function clear_all(){
				document.location.href = "./classify-find.jsp";
				} 
		</script>
    </body>

</html>

    
    
    
    
    
    