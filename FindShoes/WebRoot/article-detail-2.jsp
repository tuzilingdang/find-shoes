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
    <link rel="stylesheet" type="text/css" href="./css/jquery.mobile.flatui.css" />
    <script src="./js/jquery.js"></script>
    <script src="./js/jquery.mobile-1.4.0-rc.1.js"></script>
    <link rel="stylesheet" href="./css/idangerous.swiper.css">
     <link rel="stylesheet" href="./css/personal/personal.css" type="text/css" /> 
         
   <style type="text/css">
   		.content-table p{line-height:1.9;font-size:1em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#999;text-align:left;/*padding-right:1em;position:relative;left:.5em;*/padding-right:1em}
	/*	.user-opt{font-size:.6em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#999;text-align:center;}*/
		.content-table h2{font-size:.9em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:left;}
		.content-table{padding:1em 1em 0em 1em;background:transparent;}
		.content-table p{width:95%;line-height:1.9;margin-left:0;font-size:.9em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:left;}
		.content-table{padding:1em 1em 0em 1em;background:transparent;}
		.opt-table{width:95%;background:transparent;border-bottom: 1px solid #F5F5F5;padding-bottom:0.5em;}
		.opt-table label{font-size:.8em;color:#999;font-family:font-family:Microsoft YaHei Arial, Helvetica, sans-serif;position:relative;bottom:-.5em;}
		
		.info-table label,.shoe-info-table label{font-size:.8em;color:#666;display:inline;float:left}
		.info-table p,.shoe-info-table p{font-size:.8em;color:#999;display:inline}
		.info-table th{background-color:#E0F8F8;height:.9em}
		.info-table td{background-color:#EEE}
		
		.shoe-info-table th{height:1em}
		.shoe-info-table h2{font-size:.9em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:left;}
		#price{font-size:.9em;color:#FF6262;display:inline}
		#img{font-size:.9em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#FF6262;text-decoration:none;float:right;padding-right:-3em}
    </style>
</head>

<body>

    <div data-role="page" id="page" style="background:#fff"><!--#F5F5F5-->
        <!--  <div data-role="panel" id="panel" data-position="right" data-theme="a" data-display="push"></div>-->
          <div id = "header" data-role="header" data-theme="a" sytle="height:2em">  
          	   <a href="article.jsp" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="./images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" style="margin-left:8.2em;font-weight:100"> 看 看</h1>
          </div>
              <div data-role="content" role="main" style="margin-left:0px;border-top-right-radius:50px;border-top-left-radius:50px;">
              <div style="background:#A6E8E8;width:100%;height:3em;margin-top:1em;">
                <h2 style="width:90%;padding-left:1em;font-size:1em;font-weight:200; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:center;float:left">长毛条纹毛衣+小脚牛仔裤+内增高加绒运动鞋</h2>    
               </div> 
 				<table class="content-table" style="background:#F5F5F5;width:100%;" >
                  <tr style="background:transparent;">
                   <th style="padding-left:0em;width:30%" ><img style="height:20em;width:8em;" src="./images/Collocation/1.png"/></th><!--border-radius: 100px;-->
                   <th style="padding-left:.5em;width:70%" >
                   	 
                      <table class="info-table" style="font-size:1em;width:100%;" >
                        <tr style="height:.5em">
                        	<th colspan="2" > <h2 >模特信息：</h2></th>
                        </tr>
                      	<tr >
                        	<td><label>身高：<p>160cm</p></label></td>
                            <td ><label>体重：<p>42kg</p></label></td>
                        </tr>
                        <tr style="">
                       		<td><label>三围：<p>78 62 82</p></label></td>
                        	<td><label>脚宽：<p>10cm</p></label></td>
                        </tr>
                        <tr style="">
                            <td><label>脚长：<p>20cm</p></label></td>
                            <td><label>脚型：<p>罗马脚</p></label></td>
                        </tr>
                     	
                   	  </table>
                 	  <p>大的落肩和喇叭袖的效果，很有随意的慵懒感，下搭小脚牛仔裤，上宽下收的效果，很时尚显瘦哦，韩范十足。</p>
                      <a id="img">更多图片</a>
                   </th>
                  </tr >
                </table>
              </div>	
    		
                <div data-role="content" role="main" style="margin-left:0px;">
                 <a class="on-stor-a" href="http://detail.tmall.com/item.htm?spm=a230r.1.14.23.pgcRay&id=10106012950&ns=1&abbucket=16" target="_blank"> 
                    <table class="shoe-info-table" style="font-size:1em;width:100%;padding:.5em 1em .5em 1em;border:1px solid #F2F2F2;border-left:hidden;border-right:hidden;background:#F5F5F5" >
                        <tr>
                            <td style="width:30%;padding-left:.5em">
                                 <img style="height:4.5em;width:4.5em;float:left;" src="./images/new/37.jpg"/>
                            </td>
                            <td style="width:65%;">
                              <table>
                                <tr >
                                  <th colspan="2" ><h2>【跪拜猫】内增高加绒运动鞋</h2></th>
                                </tr>
                                <tr >
                                  <td><label>品牌：<p>跪拜猫</p></label></td>
                                  <td ><label>价格：<p id="price">￥78.40 </p></label></td>
                                </tr>
                                <tr style="">
                                  <td><label>点赞量：<p>78</p></label></td>
                                  <td><label>收藏量：<p>25</p></label></td>
                                </tr>
                               </table>
                           </td>
                           <td style="width:5%;">
                           	<img style="height:.5em;width:.5em;float:left;" src="./images/arrow487.png"/>
                           </td>
                         </tr>
                     </table>
                   </a>
                 </div>
                 
                 
              <div data-role="content" role="main" style="margin-left:0px;">
	             <table class="opt-table" >
                  <tr style="background:transparent;">
                   <td style="width:40%;padding-left:1em;">
            			<label>30分钟前</label>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right;"><i><img  style="position:relative;left:-.25em;height:1.3em;width:1.3em" src="./images/thumb_up.png"/></i><span>0</span></a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                       	 <i><img  style="position:relative;left:-.25em;height:1.3em;width:1.3em" src="./images/heart.png"/></i><span>0</span>
                        </a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                        	<i><img  style="position:relative;height:1.7em;width:1.9em" src="./images/share5.png"/></i>
                        </a>
                   </td>
                  </tr >
                </table>
         </div>
   </body>
</html>

