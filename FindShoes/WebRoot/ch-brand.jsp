<%@page import="com.model.HotBrand"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.model.showBrand, com.model.Brand , java.util.ArrayList ,com.dao.HotBrandDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Brand Choose</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"  /> 
     <link rel="stylesheet" type="text/css" href="css/jquery.mobile.flatui.css" /> 
     <script src="js/jquery.mobile-1.4.0-rc.1.js"></script>
     <script src="js/jquery.js"></script>
    <!-- <link rel="stylesheet" href="./css/personal.css" type="text/css" /> -->
    <!--<link rel="stylesheet" href="../css/p-detail.css" type="text/css" />-->
<!--    <link rel="stylesheet" href="../css/home-page.css" type="text/css" />-->
<!--    <link rel="stylesheet" href="../压缩包/Swiper-master/dist/idangerous.swiper.css">-->
<!--    <link rel="stylesheet" href="../jquery.mobile-1.3.2/jquery.mobile-1.3.2.min.css">-->
<!--    <script src="./js/jquery-1.11.1.js" type="text/javascript"></script>
    <script src="jquery.mobile-1.3.2.min.js" type="text/javascript"></script>-->
    
    
    <style type="text/css"> 
BODY {
	width: 100%;PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DIV {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DT {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
DD {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
UL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
OL {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
LI {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H1 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
H2 {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}

P {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}

LI {
	LIST-STYLE-TYPE: none; LIST-STYLE-IMAGE: none
}

H2 {
	FONT-SIZE: 100%
}

#change-city{width: 100%;height:auto;margin:0px,0px,0px,0px}
#change-city .choosecities {
	BORDER-BOTTOM: #a3d7df 1px solid; BORDER-LEFT: #a3d7df 1px solid; PADDING-BOTTOM: 60px; BACKGROUND: #fff; 
	BORDER-TOP: #a3d7df 1px solid; BORDER-RIGHT: #a3d7df 1px solid; box-shadow: 0 0 1px #d4edf4; width:100%;
	margin-top:3em;height:auto
}

#title_h2 {
	display:block; POSITION: relative; PADDING-BOTTOM: 0px; LINE-HEIGHT: 30px; MARGIN: 20px 20px 12px; 
	PADDING-LEFT: 14px; PADDING-RIGHT: 14px; ZOOM: 1; DISPLAY: inline-block; BACKGROUND: #00c7c7; HEIGHT: 32px; COLOR: #fff; PADDING-TOP: 0px; border-radius: 0
}

#change-city .choosecities .label{	display:block; margin-left: 1.4em; margin-top: 1em;text-align:center; BORDER-BOTTOM: #ddd 1px solid; BORDER-LEFT: #ddd 1px solid; LINE-HEIGHT: 24px; WIDTH: 30px; ZOOM: 1; DISPLAY: inline-block; HEIGHT: 30px; COLOR: #666; VERTICAL-ALIGN: top; BORDER-TOP: #ddd 1px solid; MARGIN-RIGHT: 5px; BORDER-RIGHT: #ddd 1px solid; border-radius: 0; background-color:#F5F5F5}

.hasallcity li{BORDER-BOTTOM: #CCC 1px solid;}
.hasallcity li:hover{BORDER-BOTTOM: #CCC 1px solid; background-color:#F5F5F5}

.hasallcity .ui-grid-c{
	margin-left: 1.4em;  margin-top: 1em; margin-bottom: 1em;
	}

.hasallcity .ui-grid-c input{display:block;  margin-top: .5em;text-align:left; 
	 BORDER:none;  ZOOM: 1; overflow:hidden;DISPLAY: inline-block;width:75px; HEIGHT: 16px; COLOR:#00c7c7; 
	 background-color:transparent;
	 }
	 
.hasallcity .ui-grid-c input:active{display:block;  margin-top: .5em;text-align:left; 
	 BORDER:none;  ZOOM: 1; overflow:hidden;DISPLAY: inline-block;width:75px; HEIGHT: 18px; COLOR:#fff; 
	 background-color:#00c7c7; boder-radius: 40px
	 }
 .hasallcity .ui-grid-c input:hover{display:block;  margin-top: .5em;text-align:left; 
	 BORDER:#00c7c7 1px solid;  ZOOM: 1; overflow:hidden;DISPLAY: inline-block;width:75px; HEIGHT: 18px; COLOR:#fff; 
	 background-color:#00c7c7; border-radius: 40px
	 }

.hasallcity .ui-grid-c label:active{background-color:#F5F5F5}

#change-city .citieslist A:hover {
	BACKGROUND: #00c7c7; COLOR: #fff
}
#change-city .citieslist .isonline {
	FONT-WEIGHT: bold
}
#change-city .citieslist .isoffline {
	FONT-WEIGHT: bold
}
BODY {
	FONT: 14px/1.5 Tahoma, Helvetica, arial, sans-serif; BACKGROUND: #d6e9ec; COLOR: #000;height:auto
}
A {
	COLOR: #399; TEXT-DECORATION: none
}
A:hover {
	TEXT-DECORATION: underline
}
SPAN.money {
	FONT-FAMILY: arial
}
SPAN.required {
	COLOR: red
}

	#confirm-button{display:inline;position:relative;left:20.8em;top:0.55em;height:1.9em;width:4.9em;
	/*background:#F98B86;*/
		background:#FF9393;
		color:#FFF;
		font-size:1.05em;
		border:none;
	}

	#clear-button{
		display:inline;position:relative;left:6.2em;top:0.4em;height:1.9em;width:4.9em;
		/*background:#F98B86;*/
		background:#999;
		color:#fff;
		font-size:1.05em;
		border:1px solid #999;
	}

#close {
    /* still bad on picking color */
    background: #a3d7df;
    color: #00c7c7;
    /* make a round button */
    border-radius: 12px;
    /* center text */
    line-height: 20px;
    text-align: center;
    height: 20px;
    width: 20px;
    font-size: 18px;
    padding: 1px;
    margin-top: -1.5em;
    margin-right:1em;    
    float:right;                                         
}
#close::before {
   content: "\58";
}
	</style>

   <script language="javascript" type="text/javascript">
	 	function hide (){
	 		if(document.getElementById("adio-choice-2").value ==""){
	 		    $(this).setAttribute("type","hidden");	
	 		}
	 	}
	 	
	   function getUrl(brandName){ 
	       if (brandName !=""){
	       	window.href = "./homepage.jsp?";
			window.href = window.href+"*"+brandName;
			//alert(window.href);
	    	document.location.href = window.href;
	       }
   	  }
	 </script>
</head>

<body onload="hide()">
<!-- 	   <div data-role="page" id="page" > -->
        <!--  <div id = "header" data-role="header" data-theme="a">  
          	   <a href="../index.html" target="_blank" style=" background-color: transparent;border:none">
              	<img id="header-img" src="../images/arrow-118-48.ico"/>
              </a>           
              <h1 id="title" > 我的美鞋 </h1>
          </div>-->
         <!--   -->
          <div id="close" ><input  style="border:none;background:transparent" type="button" onclick="history.go(-1)"></input></div>
          <div data-role="content" role="main"  style="height:auto">      
          	  
              <div id="change-city" style="height:auto">
                    <div class="choosecities" style="height:auto">
                      <p class="cf" style="width:100%;height:auto">
                      <span style="display:block"><h2 id="title_h2">按首字母选择品牌<span class="arrow">&raquo;</span></h2></span>
                      <ol class="hasallcity" >
                      <% 
                        if(session.getAttribute("uid")!=null)
                        {                      	
                         String userIdS = (String)session.getAttribute("uid");
                         int userId = Integer.parseInt(userIdS);
                      %>
                       <li id="city-A" style="width:100%">
					    <span class="label" style="display:block;width:80px "><strong>猜你喜欢</strong></span>
                       	<span> 
                       	 	<%
	                       	     HotBrandDAO hotBrandDAO = new HotBrandDAO();
	                       	     List<HotBrand> list = new ArrayList();
	                       	     list = hotBrandDAO.getHotBrandName(userId);
	                       	     HotBrand hotBrandNull = new HotBrand();
	                       	     hotBrandNull.setBrandName("");
	                       	     System.out.println("list.size()"+list.size());
	                       	     while(list.size()<8){
	                       	    	 list.add(hotBrandNull);
	                       	     }

	                       	%>
	                       	<div class="ui-grid-c"  style="color:#0CC">       	                       			                    
	                              <div class="ui-block-a">                        
		  								<input type="button" name="radio-choice" id="radio-choice-1" value="<%=list.get(0).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div> 
	  							  <div class="ui-block-b">                        
		  								<input type="button" name="radio-choice" id="radio-choice-2" value="<%=list.get(1).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>    
	  							  <div class="ui-block-c">                        
		  								<input type="button" name="radio-choice" id="radio-choice-3" value="<%=list.get(2).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>    
	  							  <div class="ui-block-d">                        
		  								<input type="button" name="radio-choice" id="radio-choice-4" value="<%=list.get(3).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>                              	
                         	 </div>
                         	 <div class="ui-grid-c"  style="color:#0CC">       	                       			                    
	                              <div class="ui-block-a">                        
		  								<input type="button" name="radio-choice" id="radio-choice-1" value="<%=list.get(4).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div> 
	  							  <div class="ui-block-b">                        
		  								<input type="button" name="radio-choice" id="radio-choice-2" value="<%=list.get(5).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>    
	  							  <div class="ui-block-c">                        
		  								<input type="button" name="radio-choice" id="radio-choice-3" value="<%=list.get(6).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>    
	  							  <div class="ui-block-d">                        
		  								<input type="button" name="radio-choice" id="radio-choice-4" value="<%=list.get(7).getBrandName() %>" style="" onclick="getUrl(this.value)"/>
	  							  </div>                              	
                         	 </div>
 
                       	  </span>
                      
                        </li>
                       	<%
                        }//end if
                       	%>
                       	
                        <%
				             showBrand showbrand = new showBrand();  
				             showbrand.classifybyInitial();  				          
				             char a = 'A';
				             for(int j=0 ;j < 26; j++){
				         %>
				         <li id="city-A" style="width:100%">
					    <span class="label" style="display:block"><strong><%= a %></strong></span>
                       	<span> 
                       	<%    	     
                       	    a += 1;
	                       	for(int i = 0; i < showbrand.getAllbrandlist().get(j).size(); i = i+4) { 
	                       			List<String> showlist = new ArrayList();
	                       			if ( i == showbrand.getAllbrandlist().get(j).size()-1){
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i).getId().getBrandName());
	                       				showlist.add("");
	                       				showlist.add("");
	                       				showlist.add("");	              
	                       			}               		                  			
	                       			else if ((i+1)  == showbrand.getAllbrandlist().get(j).size()-1){
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+1).getId().getBrandName());
	                       				showlist.add("");
	                       				showlist.add("");
	                       			}
	                       			else if ((i+2)  == showbrand.getAllbrandlist().get(j).size()-1){
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+1).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+2).getId().getBrandName());
	                       				showlist.add("");
	                       			}
	                       				
	                       			else if ((i+3)  == showbrand.getAllbrandlist().get(j).size()-1){
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+1).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+2).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+3).getId().getBrandName());
	                       			}
	                       			else {
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i).getId().getBrandName());
	                       			    showlist.add(showbrand.getAllbrandlist().get(j).get(i+1).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+2).getId().getBrandName());
	                       				showlist.add(showbrand.getAllbrandlist().get(j).get(i+3).getId().getBrandName());                   			
	                       			}		
                       	   %>   
                          <div class="ui-grid-c"  style="color:#0CC">
                              <div class="ui-block-a">
<%-- 	                                <input type="radio" name="radio-choice" id="radio-choice-2" value="choice-2" style="width:10px;height:10px"/>
	  								<label for="radio-choice-2"><%=showlist.get(0) %></label> --%>
	  								<input type="button" name="radio-choice" id="radio-choice-1" value="<%=showlist.get(0) %>" style="" onclick="getUrl('<%=showlist.get(0) %>')"/>
  							  </div>
                               <div class="ui-block-b">
                              	<input type="button" name="radio-choice" id="radio-choice-2" value="<%=showlist.get(1) %>" style="" onclick="getUrl('<%=showlist.get(1) %>')"/></div>
                              <div class="ui-block-c">
                              	<input type="button" name="radio-choice" id="radio-choice-3" value="<%=showlist.get(2) %>" style="" onclick="getUrl('<%=showlist.get(2) %>')"/></div>
                              <div class="ui-block-d">
                              	<input type="button" name="radio-choice" id="radio-choice-4" value="<%=showlist.get(3) %>" style="" onclick="getUrl('<%=showlist.get(3) %>')"/></div>
                              <%-- <div class="ui-block-e"><%=showlist.get(4) %></div>  --%>
                          </div>
                           <%}  %> 
                          </span>
                        <!--  </p>-->
                        </li>
                        <%} %>
                        
      
                     </ol>
                   </div>  <!--choosecities-->
 
              </div> <!--change-city-->
              
<!--               <div id="ui-grid-solo-btn" data-role="ui-grid-solo"  data-theme="f"  >
               		 <input id="confirm-button" type="submit" value="确定" />  
                     <input id="clear-button" type="submit" value="清除" />  
              </div> -->
 		 </div> <!--content-->
   <!--      </div> -->   
      

</body>
</html>
