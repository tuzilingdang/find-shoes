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
        <script src="./js/classify-find/jquery-1.11.1.js" type="text/javascript"></script>
        <script src="./js/classify-find/classify-find.js" type="text/javascript"></script>
        <script src="./js/classify-find/jquery.mobile-1.3.2.min.js" type="text/javascript"></script>       
    </head>
    
       <body >  
            <div data-role="content" class="content_2" data-theme="c">
             		<div class ="content_title"><h2 class="content_title-h2">搜索结果</h2></div>
                	
                	<s:iterator value="showShoesList" status="var">
	                	<a href="p-detail-2-cla.jsp" target="_blank">
	              			<div data-role="ui-grid-solo" class="ui-grid-solo-2" data-theme="f" style="height:8em"> 
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
                    
              </div>

    </body>

</html>

    
    
    
    
    
    