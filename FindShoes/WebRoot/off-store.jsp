<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">-->
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" type="text/css" href="./css/jquery.mobile.flatui.css" />
     <link rel="stylesheet" href="./css/search-result.css" type="text/css" />
     <link href="./css/style.css" rel="stylesheet" type="text/css">
     <script src="./js/jquery.js"></script>
     <script src="./js/jquery.mobile-1.4.0-rc.1.js"></script>	 
   <style type="text/css">
    .header-nav{display:inline;list-style:none;}
    .header-nav-item{width:33%;float:left;}
    #menu-1，#menu-2{
      margin-top：0em;
      }
     </style>
     
     <script type="text/javascript" src="http://map.baidu.com/"></script> 
   <script type="text/javascript"> 
    function init() { 
      if (navigator.geolocation) { 
        //获取当前地理位置 
        navigator.geolocation.getCurrentPosition(function (position) { 
            var coords = position.coords; 
            //console.log(position); 
            //指定一个google地图上的坐标点，同时指定该坐标点的横坐标和纵坐标 
            var latlng = new google.maps.LatLng(coords.latitude, coords.longitude); 
            var myOptions = { 
              zoom: 14, //设定放大倍数 
              center: latlng, //将地图中心点设定为指定的坐标点 
              mapTypeId: google.maps.MapTypeId.ROADMAP //指定地图类型 
            }; 
            //创建地图，并在页面map中显示 
            var map = new google.maps.Map(document.getElementById("map"), myOptions); 
            //在地图上创建标记 
            var marker = new google.maps.Marker({ 
              position: latlng, //将前面设定的坐标标注出来 
              map: map //将该标注设置在刚才创建的map中 
            }); 
            //标注提示窗口 
            var infoWindow = new google.maps.InfoWindow({ 
              content: "当前位置：<br/>经度：" + latlng.lat() + "<br/>维度：" + latlng.lng() //提示窗体内的提示信息 
            }); 
            //打开提示窗口 
            infoWindow.open(map, marker); 
          }, 
          function (error) { 
            //处理错误 
            switch (error.code) { 
              case 1: 
                alert("位置服务被拒绝。"); 
                break; 
              case 2: 
                alert("暂时获取不到位置信息。"); 
                break; 
              case 3: 
                alert("获取信息超时。"); 
                break; 
              default: 
                alert("未知错误。"); 
                break; 
          } 
        }); 
      }
      else { 
        alert("你的浏览器不支持HTML5来获取地理位置信息。"); 
      } 
    } 
  </script>         
</head>

<body onload="init()">
 <a href="homepage.jsp" target="_blank"><img src="images/arrow-118-48.ico"/></a>
     <div data-role="page" id="page" >
      	<img src="./images/offstore.png" style="width:100% ;height=100%">    
        
	</div>
</body>
<!--<script type="text/javascript">

// 地图API功能
function getMyLocation(){
  if(navigator.geolocation){
    navigator.geolocation.getCurrentPosition(function(position){
      showLocation(position.coords.latitude,position.coords.longitude);
    });
    }
  else {
    alert("对不起，您的浏览器不支持HTML5来获取地理位置信息。");
    }
  }



var showLocation = function(lat,lng){
  var fragment = "&markers=color:red/color:red/label:Y/"+lat+","+lng;
  var image = $("#map");
  var source = image.attr("src")+fragment;
  source = source.replace("sensor=false","sensor=true");
  image.attr("src",source);
  };
</script>
-->
</html>


