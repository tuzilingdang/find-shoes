// JavaScript Document
/*var flag;*/


     $(document).ready(function(){ 
    	
    	 
     }); 

		

 	
            var href ="" ;
				
			function changeDisplay(s){
				var helloDivObj = $("#div-folder");   
			    var buttonObj1 = $("#btnDisplay1");   
			    var buttonObj2 =  $("#btnDisplay2");
				var val = s;
				if(val=="more"){
					/*<!--helloDivObj.style.display='block';-->*/
					helloDivObj.show();
					/*<!--document.getElementById("#helloDiv").style.visibility="visible";-->	*/	
					 buttonObj1.hide();  
					/* document.getElementById("#btnDisplay1").style.display="none";*/
					/*buttonObj1.attr(display,none);*/
					 $("#div-folder").append("<input id='btnDisplay2' class='btnDisplay' type='button' value='鏀惰捣' onclick='changeDisplay()'/> ");                 
					 val = buttonObj1.attr("value");				  
					  buttonObj2.show();}
					
				else{
					helloDivObj.hide();
					buttonObj1.show();     
					$("#btnDisplay2").remove("#btnDisplay2 ");	
					val = buttonObj2.attr("value");
					 }
					
				}
			
			function findFlag(thisURL){
				if(thisURL.indexOf("*") > 0 )  
					{  
						return false;  
					}
				else 
					return true;
				}
			
			
/*************************************************寮圭獥閮ㄥ垎***************************************************/			
        	function btnPop_onclick() {	
			    var thisURL = document.URL;    
 				window.flag = findFlag(thisURL);	
				var cover = "<div id='Cover' onclick='btnClose_onclick()'></div>";
				$("body").append(cover);
				var pop = "<div id='Pop'></div>";
				var popContent = "<div class='popContent'></div>";
			/*	var buttonGroup = "<fieldset data-role='controlgroup' class='pop-buttonGroup'></fieldset>";*/
				
				var grid_b1 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b1' data-theme='f' ></div>"; /*鍝佺墝寮圭獥鍑芥暟*/
				var grid_b2 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b2' data-theme='f' ></div>"; /*瀛ｈ妭寮圭獥鍑芥暟*/
				var grid_b3 = "<div  data-role='ui-grid-solo'  id='ui-grid-b3' data-theme='f' style='height:23.5em' ></div>"; /*浠锋牸寮圭獥鍑芥暟*/
				var grid_b4 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b4' data-theme='f' ></div>"; /*閫夎喘鐑偣寮圭獥鍑芥暟*/
				var grid_b5 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b5' data-theme='f' ></div>"; /*璺熼珮寮圭獥鍑芥暟*/
				var grid_b6 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b6' data-theme='f' ></div>"; /*娴佽鍏冪礌寮圭獥鍑芥暟*/
				var grid_b7 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b7' data-theme='f' ></div>"; /*鍦哄悎寮圭獥鍑芥暟*/
				var grid_b8 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b8' data-theme='f' ></div>"; /*鍦哄悎寮圭獥鍑芥暟*/
				var grid_b9 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b9' data-theme='f' ></div>"; /*闉嬪ご寮圭獥鍑芥暟*/
				var grid_b10 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b10' data-theme='f' ></div>"; /*璺熷瀷寮圭獥鍑芥暟*/
				var grid_b11 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b11' data-theme='f' ></div>"; /*鐨川鐗瑰緛寮圭獥鍑芥暟*/
				var grid_b12 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b12' data-theme='f' ></div>"; /*闉嬪簳鏉愯川寮圭獥鍑芥暟*/
				var grid_b13 = "<div  data-role='ui-grid-b' class='ui-grid-b' id='ui-grid-b13' data-theme='f' ></div>"; /*娌垮彛楂樺害寮圭獥鍑芥暟*/
				
				
				var form_price = "<form method='get' action='xxx.asp' id='form_price'></form>";
				
				switch(str){
					case "brand":
						$("body").append(pop);
						pop_brands(pop,grid_b1,form_price,"brand"); break;
					case "season":
						$("body").append(pop);
						pop_season(pop,grid_b2,form_price,"season"); break;
					case "price":
						$("body").append(pop); /*passval_price("price");*/
						pop_price(pop,grid_b3,form_price,"price"); break;
					case "hotwords":
						$("body").append(pop);
						pop_hotwords(pop,grid_b4,form_price,"hotwords");break;
					case "height":
						$("body").append(pop);
						pop_height(pop,grid_b5,form_price,"height");break;
					case "pop":
						$("body").append(pop);
						pop_pop(pop,grid_b6,form_price,"pop");break;    
					case "occasion":
						$("body").append(pop);
						pop_occasion(pop,grid_b7,form_price,"occasion");break;
					case "style":
						$("body").append(pop);
						pop_style(pop,grid_b8,form_price,"style");break;
					case "toecap":
						$("body").append(pop);
						pop_toecap(pop,grid_b9,form_price,"toecap");break;
					case "heeltype":
						$("body").append(pop);
						pop_heeltype(pop,grid_b10,form_price,"heeltype");break;
					case "leather_f":
						$("body").append(pop);
						pop_leather_f(pop,grid_b11,form_price,"leather_f");break;
					case "bottom_material":
						$("body").append(pop);
						pop_bottom_material(pop,grid_b12,form_price,"bottom_material");break;
					case "upper_h":
						$("body").append(pop);
						pop_upper_h(pop,grid_b13,form_price,"upper_h");break;
					default:
						break;
					}
				}
					
				/*鍝佺墝寮圭獥鍑芥暟*/
				function pop_brands(pop,grid_b1,form_price,cdit_name){
					if (  window.flag == true )
						window.href = "./homepage.jsp?";
					else
						window.href = document.URL;	
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>品牌</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b1+"<input class='btn-clear' type='button' value='清除' onclick='clear_val()' /><input type='hidden' value='纯香' id='brandName'/>"
						  + "<input class='btn-sure' type='button' value='确定' onclick='passval_price(\"brand\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b1").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='彼艾/BIAI' id='chk-price-1'  /> <label for='chk-price-1'><h4>彼艾/BIAI</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' class='brandck' data-theme='c' name='brandck' value='达芙妮' id='chk-price-2'  /> <label for='chk-price-2'><h4>达芙妮</h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='古奇天伦' id='chk-price-3'  /> <label for='chk-price-3'><h4>古奇天伦</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='伟登/weideng' id='chk-price-4'  /> <label for='chk-price-4'><h4>伟登</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='D:FUSE' id='chk-price-5'  /> <label for='chk-price-5'><h4>D:FUSE</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='公猴' id='chk-price-6'  /> <label for='chk-price-6'><h4>公猴</h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='尤萨' id='chk-price-7'  /> <label for='chk-price-7'><h4>尤萨</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='纯香' id='chk-price-8'  /> <label for='chk-price-8'><h4>纯香</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='阿伊唯' id='chk-price-9'  /> <label for='chk-price-9'><h4>阿伊唯</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='GOTOUGG' id='chk-price-10'  /> <label for='chk-price-10'><h4>GOTOUGG</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='巫卡卡' id='chk-price-11'  /> <label for='chk-price-11'><h4>巫卡卡</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='brandck' value='CAMEL' id='chk-price-12'  /> <label for='chk-price-12'><h4>CAMEL</h4></label></div>"
					);
			  	} 	
			


			
		function btnClose_onclick() {
				$("#Cover").remove();
				$("#Pop").remove();
			}
 
        function clear_val(){
			$("[name='ck']").removeAttr("checked");//鍙栨秷鍏ㄩ�  
			//新片速递的图片显示的操作 
			$("[name='brandck']").removeAttr("checked");
			$("#brandName").val('彼艾/BIAI');
			//$("input[name='brandck']").attr("checked",false);
			}
 
 
 /*************************************************solo鏄剧ず閮ㄥ垎/checkbox閫夋嫨鍊煎洖浼�**************************************************/
		function passval_price(cdit_name){/*a,b,c,d,e,f,g*/
/*			window.href = window.href.split('$')[0]; */  
			var param ="";   
            if(document.getElementById("chk-price-1")!= null && document.getElementById("chk-price-1").checked){
				param+=document.getElementById("chk-price-1").value+",";  
				}     				         
            if(document.getElementById("chk-price-2")!= null && document.getElementById("chk-price-2").checked)
                param+=document.getElementById("chk-price-2").value+",";
			if(document.getElementById("chk-price-3")!= null && document.getElementById("chk-price-3").checked)
                param+=document.getElementById("chk-price-3").value+",";
			if(document.getElementById("chk-price-4")!= null && document.getElementById("chk-price-4").checked)				 
				  	param+=document.getElementById("chk-price-4").value+",";               
		    if(document.getElementById("chk-price-5")!= null && document.getElementById("chk-price-5").checked)
                param+=document.getElementById("chk-price-5").value+",";
			if(document.getElementById("chk-price-6")!= null && document.getElementById("chk-price-6").checked)
                param+=document.getElementById("chk-price-6").value+",";
			if(document.getElementById("chk-price-7")!= null && document.getElementById("chk-price-7").checked)
                param+=document.getElementById("chk-price-7").value+",";
			if(document.getElementById("chk-price-8")!= null && document.getElementById("chk-price-8").checked)
                param+=document.getElementById("chk-price-8").value+",";
			if(document.getElementById("chk-price-9")!= null && document.getElementById("chk-price-9").checked)
                param+=document.getElementById("chk-price-9").value+",";
			if(document.getElementById("chk-price-10")!= null && document.getElementById("chk-price-10").checked)
                param+=document.getElementById("chk-price-10").value+",";
			if(document.getElementById("chk-price-11")!= null && document.getElementById("chk-price-11").checked)
                param+=document.getElementById("chk-price-11").value+",";
			if(document.getElementById("chk-price-12")!= null && document.getElementById("chk-price-12").checked)
                param+=document.getElementById("chk-price-12").value+",";
					
            param = param.substring(0,param.length-1);
			/*var rr = document.getElementById('chk-price-4');
			document.write(rr);*/
			/*document.location.href="xxx.jsp?param="+param;*/

		/*	pre_href = window.href;*/
		    if(window.flag == true)
				window.href = window.href+"*"+cdit_name+"="+param+"&";
			else
			    window.href = window.href+cdit_name+"="+param+"&";
            /*document.write(window.href );*/
			//document.location.href = window.href;
			/*document.write(param);*/
			/*$("#ui-block-price").append("<label>param</label>");*/
			/*return href;*/		   
		    getUrl($("#brandName").val());
		    btnClose_onclick();
		    
		}
		
		function test(){
			document.write(window.href);
		}