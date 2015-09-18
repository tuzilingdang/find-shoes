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
              <h1 id="title" style="margin-left:8.2em;font-weight:100"> 看 看</h1>
          </div>

   <div class="wrap">
        <div class="tabs">
            <a href="#" hidefocus="true" class="active">看美鞋</a>
            <a href="#" hidefocus="true">看搭配</a>
            <a href="#" hidefocus="true">看优惠</a>
        </div>    
        <div class="swiper-container">
           <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="content-slide">
	        <s:iterator value="showArticlesList" status="var">
	            <a href="showArticleShoes.action?articleId=<s:property value="article.articalId" />" target="_blank" style=" background-color: transparent;border:none">  
	                <table class="content-table" >
	                  <tr style="background:transparent;">
	                   <th ><img style="height:8em;width:8em;" src="./images/pd-img/35.png"/></th><!--border-radius: 100px;-->
	                   <th style="padding-left:1.5em" ><h2><s:property value="article.title"/></h2>
	                 	  <p><s:property value="article.lead"/></p>
	                   </th>
	                  </tr >
	                </table>
                </a>	
                <table class="opt-table" >
                  <tr style="background:transparent;">
                   <input type="hidden" class="articleId" value="<s:property value="article.articalId"/>" />
                   <td style="width:40%;padding-left:1em;">
            			<label><s:property value="article.date"/></label>
                   </td>
                   <td style="width:17%" >                
            			<a class="<s:property value="isLiked"/>" href="#" >
            			<i></i><span>
            			<s:property value="numsOfLike"/>
            			</span></a>
                   </td>
                   <td style="width:17%" >
            			<a class="<s:property value="isCollection"/>" href="#"  style="float:right">
                       	 <i></i><span>
                       	 <s:property value="numsOfCollection"/>
                       	 </span>
                        </a>
                   </td>
                   <td style="width:17%" >
            			<a class="repost" href="#"  style="float:right">
                        	<i><img  style="position:relative;left:-.75em;top:-.5em;height:.5m;width:2.3em" src="./images/share5.png"/></i>
                        </a>
                   </td>
                  </tr >
                </table>
              </s:iterator>  
             
                
              </div>
            </div>
            <div class="swiper-slide">
                <div class="content-slide">
              	 <a  href="article-detail-2.jsp" target="_blank" style="height:auto;width:auto">
                    <table class="content-table" >
                      <tr style="background:transparent;">
                       <th ><img style="height:20em;width:8em;" src="./images/Collocation/1.png"/></th><!--border-radius: 100px;-->
                       <th style="padding-left:1.5em" >
                          <h2>长毛条纹毛衣+小脚牛仔裤+内增高加绒运动鞋</h2>
                          <p>大的落肩和喇叭袖的效果，很有随意的慵懒感，下搭小脚牛仔裤，上宽下收的效果，很时尚显瘦哦，韩范十足。</p>
                       </th>
                      </tr >
                    </table>	
                  </a>
                  <table class="opt-table" >
                    <tr style="background:transparent;">
                     <td style="width:40%;padding-left:1em;">
                          <label>30分钟前</label>
                     </td>
                     <td style="width:15%" >
                          <a class="praise" href="#"  style="float:right;background:url(./images/module_z_9b11ea2.png) no-repeat -23px -129px;"><i></i><span>0</span></a>
                     </td>
                     <td style="width:15%" >
                          <a class="praise" href="#"  style="float:right"><i><img  style="position:relative;left:-.25em;height:1.5em;width:1.5em" src="./images/heart.png"/></i><span>0</span></a>
                     </td>
                     <td style="width:15%" >
                          <a class="praise" href="#"  style="float:right"><i><img  style="position:relative;left:-.75em;top:-.5em;height:.5m;width:2.3em" src="./images/share5.png"/></i></a>
                     </td>
                    </tr >
                  </table>
              

                <table class="content-table" >
                  <tr style="background:transparent;"> 
                   <th style="padding-left:.5em" ><h2>长毛条纹毛衣+小脚牛仔裤+内增高加绒运动鞋</h2>
                 	  <p>大的落肩和喇叭袖的效果，很有随意的慵懒感，下搭小脚牛仔裤，上宽下收的效果，很时尚显瘦哦，韩范十足。</p>
                   </th>
                   <th ><img style="height:20em;width:10em;" src="./images/Collocation/2.png"/></th><!--border-radius: 100px;-->
                  </tr >
                </table>	
				<table class="opt-table" >
                  <tr style="background:transparent;">
                   <td style="width:40%;padding-left:1em;">
            			<label>30分钟前</label>
                   </td>
                   <td style="width:15%" >
            			<a class="praise" href="#"  style="float:right;background:url(./images/module_z_9b11ea2.png) no-repeat -23px -129px;"><i></i><span>0</span></a>
                   </td>
                   <td style="width:15%" >
            			<a class="praise" href="#"  style="float:right"><i><img  style="position:relative;left:-.25em;height:1.5em;width:1.5em" src="../images/heart.png"/></i><span>0</span></a>
                   </td>
                   <td style="width:15%" >
            			<a class="praise" href="#"  style="float:right"><i><img  style="position:relative;left:-.75em;top:-.5em;height:.5m;width:2.3em" src="../images/share5.png"/></i></a>
                   </td>
                  </tr >
                </table>
              </div>
              </div>
            <div class="swiper-slide">
                <div class="content-slide">
                 <ul>
                	<li><h2>迈思品牌女鞋秋冬款3.8-6折优惠</h2></li>
                    <li><img style="height:12em;width:90%;" src="./images/home_page-camara/6.jpg"/></li>
                    <li><p> MUX是以设计高品质时尚鞋类、皮革制品及饰品著称的欧盟品牌。</p></li>
					<li><p>地址：南宁市民族大道中段49号新梦之岛民族店 </p></li>
					<li><p>电话：0771-2853505</p></li>
                </ul>
               <table class="opt-table" >
                  <tr style="background:transparent;">
                   <td style="width:40%;padding-left:1em;">
            			<label>30分钟前</label>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right;background:url(./images/module_z_9b11ea2.png) no-repeat -23px -129px;"><i></i><span>0</span></a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                       	 <i><img  style="position:relative;left:-.25em;height:1.5em;width:1.5em" src="./images/heart.png"/></i><span>0</span>
                        </a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                        	<i><img  style="position:relative;left:-.75em;top:-.5em;height:.5m;width:2.3em" src="./images/share5.png"/></i>
                        </a>
                   </td>
                  </tr >
                </table>
              </div>
          	</div>
          </div>
       </div>
	</div>
 </div>

	<script type="text/javascript" src="./js/jquery-1.10.1.min.js"></script> 
    <script type="text/javascript" src="./js/idangerous.swiper.min.js"></script> 
    <script type='text/javascript' src="./js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="./js/article/article.js"></script>
   </body>
</html>
