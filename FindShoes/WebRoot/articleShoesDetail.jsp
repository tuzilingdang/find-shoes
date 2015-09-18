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
		.text p{width:95%;line-height:1.9;margin-left:0;font-size:.9em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#999;text-align:left;}
		.content-table{padding:1em 1em 0em 1em;background:transparent;}
		.opt-table{width:95%;background:transparent;border-bottom: 1px solid #F5F5F5;padding-bottom:0.5em;}
		.opt-table label{font-size:.8em;color:#999;font-family:font-family:Microsoft YaHei Arial, Helvetica, sans-serif;position:relative;bottom:-.5em;}
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
              <div data-role="content" role="main" style="margin-left:0px;">
                <h2 style="width:90%;padding-top:1.5em;padding-left:1em;font-size:1.1em;font-weight:100; font-family:Microsoft YaHei Arial, Helvetica, sans-serif; color:#666;text-align:center;"><s:property value="showArticleBean.article.title" /></h2>     
                <img style="width:90%;height:15em;padding-left:1em"src="http://stimgcn1.s-msn.com/msnportal/luxury/2012/10/23/d0fbb908-81a4-4f16-89fd-7cd3d5d8aae3.jpg"/>
                <ul class="text" style="margin-left:0px;padding-left:1em">
        　			<p><s:property value="showArticleBean.article.content" /></p>
                   <!--   <p>“陌上花开，如果没有悄然伫立阡陌并为陌上风情所陶醉的人，那么花开也寂寞，风情也苍白....”喜欢这句话，是因为看了忍冬的作品《陌上花开缓缓归》</p>
                   
                    <p>阳春三月，风和日暖，信步城外，看阡陌之上的杨柳依依，野花绚烂，身心不由得轻爽而浪漫。“三月风情陌上花”，古远的诗句似乎随风从天边飘来，从历史的深处飘来，拂过阡陌，袭上心头，诗是属于清乾嘉诗人赵翼的，可昂首远望，眼前的陌上风情却是不折不扣的现代，由眼帘入心扉。</p>      
               -->
               </ul>
             </div> 
    </div>
	             <table class="opt-table" >
                  <tr style="background:transparent;">
                   <td style="width:40%;padding-left:1em;">
            			<label>30分钟前</label>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right;"><i><img  style="position:relative;left:-.25em;height:1.3em;width:1.3em" src="./images/thumb_up.png"/></i><span>
            			<s:property value="showArticleBean.numsOfLike" />
            			</span></a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                       	 <i><img  style="position:relative;left:-.25em;height:1.3em;width:1.3em" src="./images/heart.png"/></i>
                       	 <span><s:property value="showArticleBean.numsOfCollection" /></span>
                        </a>
                   </td>
                   <td style="width:17%" >
            			<a class="praise" href="#"  style="float:right">
                        	<i><img  style="position:relative;height:1.7em;width:1.9em" src="../images/share5.png"/></i>
                        </a>
                   </td>
                  </tr >
                </table>
   </body>
</html>

