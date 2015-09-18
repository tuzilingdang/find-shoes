// JavaScript Document
/*var flag;*/


     $(document).ready(function(){ }); 
			
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
        	function btnPop_onclick(str) {	
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
						window.href = "./classify-find.jsp?";
					else
						window.href = document.URL;	
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>鍝佺墝</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b1+"<input class='btn-clear' type='button' value='娓呴櫎' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"brand\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b1").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='彼艾/BIAI' id='chk-price-1'  /> <label for='chk-price-1'><h4>彼艾/BIAI</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='杈捐姍濡� id='chk-price-2'  /> <label for='chk-price-2'><h4>杈捐姍濡�/h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浠栧ス' id='chk-price-3'  /> <label for='chk-price-3'><h4>浠栧ス</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍗冪櫨搴� id='chk-price-4'  /> <label for='chk-price-4'><h4>鍗冪櫨搴�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='绾㈣溁铚� id='chk-price-5'  /> <label for='chk-price-5'><h4>绾㈣溁铚�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏄熸湡鍏� id='chk-price-6'  /> <label for='chk-price-6'><h4>鏄熸湡鍏�/h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='澶╃編鎰� id='chk-price-7'  /> <label for='chk-price-7'><h4>澶╃編鎰�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鎺ュ惢鐚� id='chk-price-8'  /> <label for='chk-price-8'><h4>鎺ュ惢鐚�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鎬濆姞鍥� id='chk-price-9'  /> <label for='chk-price-9'><h4>鎬濆姞鍥�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍗撹瘲灏� id='chk-price-10'  /> <label for='chk-price-10'><h4>鍗撹瘲灏�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍝堟．' id='chk-price-11'  /> <label for='chk-price-11'><h4>鍝堟．</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='Gucci' id='chk-price-12'  /> <label for='chk-price-12'><h4>Gucci</h4></label></div>"
					);
			  	} 	
								
				
				/*瀛ｈ妭寮圭獥鍑芥暟*/
				function pop_season(pop,grid_b2,form_price,cdit_name){
					/*document.write(getValue()); 	*/
	                if ( window.flag == true ){
						window.href = "./classify-find.jsp?";
						}
					else
						window.href = document.URL;	
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>瀛ｈ妭</h2></div>"
						  + form_price
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b2+"<input class='btn-clear' type='button' value='娓呴櫎' onclick='clear_val()'/>"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"season\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b2").append(
						"<div data-role='ui-block-a' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='鏄ョ瀛� id='chk-price-1' data-mini='true'/> <label for='chk-price-1'><h4>鏄ョ瀛�/h4></label></div>"
						+"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck'  value='澶忓' id='chk-price-2' data-mini='true'/> <label for='chk-price-2'><h4>澶忓</h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-c' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='鍐' id ='chk-price-3' data-mini='true'/> <label for='chk-price-3'><h4>鍐</h4></label></div>"	
					);
			  	} 	
				
				/*浠锋牸寮圭獥鍑芥暟*/
				function pop_price(pop,grid_b3,form_price,cdit_name){
/*					alert(window.href);*/
					if ( window.flag == true){
						window.href = "./classify-find.jsp?";
						}
					else
						window.href = document.URL;	
						href = window.href;
					/*document.write(flag);*/
						$("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						+ "<div class=' popMain'>"
						+"<div class ='pop_title'><h2 class='pop_title-h2'>浠锋牸</h2></div>"
						+ form_price
						+ "<div style='margin-top:22px;'>"						
					 );

					$("#form_price").append(grid_b3+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						+ "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"price\")'/>" 	);  
					 
					$("#ui-grid-b3").append(
					  "<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='<100' id='chk-price-1' data-mini='true'/> <label for='chk-price-1'><h4><100</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='100-199' id='chk-price-2' data-mini='true'/> <label for='chk-price-2'><h4>100-199</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='200-299' id='chk-price-3' data-mini='true'/> <label for='chk-price-3'><h4>200-299</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='300-399' id='chk-price-4' data-mini='true'/> <label for='chk-price-4'><h4>300-399</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='400-599' id='chk-price-5' data-mini='true'/> <label for='chk-price-5'><h4>400-599</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='600-999' id='chk-price-6' data-mini='true'/> <label for='chk-price-6'><h4>600-999</h4></label></div>"
					  +"<div data-role='ui-block-a' class='ui-block-a-3'><input type='checkbox' data-theme='c' name='ck' value='>1000' id='chk-price-7' data-mini='true'/> <label for='chk-price-7'><h4>>1000</h4></label></div>"
				  );
							}
					
				/*閫夎喘鐑偣寮圭獥鍑芥暟*/
				function pop_hotwords(pop,grid_b4,form_price,cdit_name){
					
					if ( window.flag == true)
						window.href = "./classify-find.jsp?";
					else
						window.href = document.URL;	
					
					$("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						+ "<div class=' popMain'>"
						+"<div class ='pop_title'><h2 class='pop_title-h2'>閫夎喘鐑偣</h2></div>"
						+ form_price/*grid_b4*/
						+ "<div style='margin-top:22px;'>"			
					 );
					 
					$("#form_price").append (grid_b4+ "<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						+ "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"hotwords\")' />");
						
					$("#ui-grid-b4").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鎽囨憞闉� id='chk-price-1'  /> <label for='chk-price-1'><h4>鎽囨憞闉�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏉剧硶闉� id='chk-price-2'  /> <label for='chk-price-2'><h4>鏉剧硶闉�/h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='甯嗗竷闉� id='chk-price-3'  /> <label for='chk-price-3'><h4>甯嗗竷闉�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏉块瀷' id='chk-price-4'  /> <label for='chk-price-4'><h4>鏉块瀷</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='涓瓛闈� id='chk-price-5'  /> <label for='chk-price-5'><h4>涓瓛闈�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍐呭楂� id='chk-price-6'  /> <label for='chk-price-6'><h4>鍐呭楂�/h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鑸炶箞闉� id='chk-price-7'  /> <label for='chk-price-7'><h4>鑸炶箞闉�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='楂樼瓛闈� id='chk-price-8'  /> <label for='chk-price-8'><h4>楂樼瓛闈�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍘氬簳闉� id='chk-price-9'  /> <label for='chk-price-9'><h4>鍘氬簳闉�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浣庣瓛闈� id='chk-price-10'  /> <label for='chk-price-10'><h4>浣庣瓛闈�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鐨瘺涓�綋' id='chk-price-11'  /> <label for='chk-price-11'><h4>鐨瘺涓�綋</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍧¤窡闉� id='chk-price-12'  /> <label for='chk-price-12'><h4>鍧¤窡闉�/h4></label></div>"
				  );

			  	} 
			
        	function pop_height(pop,grid_b5,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	

					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>璺熼珮</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b5+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"height\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b5").append(
						"<div data-role='ui-block-a' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='骞宠窡' id='chk-price-1' data-mini='true'/> <label for='chk-price-1'><h4>骞宠窡</h4></label></div>"
						+"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck'  value='浣庤窡' id='chk-price-2' data-mini='true'/> <label for='chk-price-2'><h4>浣庤窡</h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-c' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='涓窡' id ='chk-price-3' data-mini='true'/> <label for='chk-price-3'><h4>涓窡</h4></label></div>"	
						+"<div data-role='ui-block-c' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='楂樿窡' id ='chk-price-4' data-mini='true'/> <label for='chk-price-4'><h4>楂樿窡</h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='瓒呴珮璺� id ='chk-price-5' data-mini='true'/> <label for='chk-price-5'><h4>瓒呴珮璺�/h4></label></div>"
					);
			  	} 	
				
			    function pop_pop(pop,grid_b6,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	
					  /*document.write(window.href);*/
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>娴佽鍏冪礌</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b6+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"pop\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b6").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='铦磋澏缁� id='chk-price-1'  /> <label for='chk-price-1'><h4>铦磋澏缁�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鎷兼帴鎾炶壊' id='chk-price-2'  /> <label for='chk-price-2'><h4>鎷兼帴鎾炶壊</h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='璞圭汗' id='chk-price-3'  /> <label for='chk-price-3'><h4>璞圭汗</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='姘撮捇' id='chk-price-4'  /> <label for='chk-price-4'><h4>姘撮捇</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='绯栨灉鑹� id='chk-price-5'  /> <label for='chk-price-5'><h4>绯栨灉鑹�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娉㈢偣' id='chk-price-6'  /> <label for='chk-price-6'><h4>娉㈢偣</h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娴佽嫃' id='chk-price-7'  /> <label for='chk-price-7'><h4>娴佽嫃</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏍煎瓙绾� id='chk-price-8'  /> <label for='chk-price-8'><h4>鏍煎瓙绾�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浜墖' id='chk-price-8'  /> <label for='chk-price-9'><h4>浜墖</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='涓茬彔' id='chk-price-10'  /> <label for='chk-price-10'><h4>涓茬彔</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閲戝睘瑁呴グ' id='chk-price-11'  /> <label for='chk-price-11'><h4>閲戝睘瑁呴グ</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浜ゅ弶缁戝甫' id='chk-price-12'  /> <label for='chk-price-12'><h4>浜ゅ弶缁戝甫</h4></label></div>"
					);
			  	} 	
			
			function pop_occasion(pop,grid_b7,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?"+"$";
					else
						window.href = document.URL+"$";	
					  /*document.write(window.href);*/
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>鍦哄悎</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b7+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"occasion\")'/>"	); 
					  $("#ui-grid-b7").append(
					    "<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閫氬嫟' id='chk-price-1'  /> <label for='chk-price-1'><h4>閫氬嫟</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='绾︿細' id='chk-price-2'  /> <label for='chk-price-2'><h4>绾︿細</h4></label></div>"		          
					  + "<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鑱氫細' id='chk-price-3'  /> <label for='chk-price-3'><h4>鑱氫細</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閫涜' id='chk-price-4'  /> <label for='chk-price-4'><h4>閫涜</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浼戦棽' id='chk-price-5'  /> <label for='chk-price-5'><h4>浼戦棽</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='缁撳' id='chk-price-6'  /> <label for='chk-price-6'><h4>缁撳</h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娌欐哗' id='chk-price-7'  /> <label for='chk-price-7'><h4>娌欐哗</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏃呰' id='chk-price-8'  /> <label for='chk-price-8'><h4>鏃呰</h4></label></div>"
					);
			  	} 	
			
			 function pop_style(pop,grid_b8,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	
					  /*document.write(window.href);*/
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>椋庢牸</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b8+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"style\")'/>"	);
					  $("#ui-grid-b8").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='闊╃郴' id='chk-price-1'  /> <label for='chk-price-1'><h4>闊╃郴</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏃ョ郴' id='chk-price-2'  /> <label for='chk-price-2'><h4>鏃ョ郴</h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='缃楅┈' id='chk-price-3'  /> <label for='chk-price-3'><h4>缃楅┈</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娆х編' id='chk-price-4'  /> <label for='chk-price-4'><h4>娆х編</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='妫コ' id='chk-price-5'  /> <label for='chk-price-5'><h4>妫コ</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鐢板洯' id='chk-price-6'  /> <label for='chk-price-6'><h4>鐢板洯</h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='涓浗椋� id='chk-price-7'  /> <label for='chk-price-7'><h4>涓浗椋�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閫氬嫟' id='chk-price-8'  /> <label for='chk-price-8'><h4>閫氬嫟</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娉㈣タ绫充簹' id='chk-price-9'  /> <label for='chk-price-9'><h4>娉㈣タ绫充簹</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='浼戦棽' id='chk-price-10'  /> <label for='chk-price-10'><h4>浼戦棽</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='琛楀ご' id='chk-price-11'  /> <label for='chk-price-11'><h4>琛楀ご</h4></label></div>"	
					);
			  	} 	
				
		       function pop_toecap(pop,grid_b9,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	
					  /*document.write(window.href);*/
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>闉嬪ご</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b9+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"toecap\")'/>"	);	 
					  $("#ui-grid-b9").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍦嗗ご' id='chk-price-1'  /> <label for='chk-price-1'><h4>鍦嗗ご</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='灏栧ご' id='chk-price-2'  /> <label for='chk-price-2'><h4>灏栧ご</h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏂瑰ご' id='chk-price-3'  /> <label for='chk-price-3'><h4>鏂瑰ご</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='澶硅毒' id='chk-price-4'  /> <label for='chk-price-4'><h4>澶硅毒</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='闇茶毒' id='chk-price-5'  /> <label for='chk-price-5'><h4>闇茶毒</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='楸煎槾' id='chk-price-6'  /> <label for='chk-price-6'><h4>楸煎槾</h4></label></div>"					 
					);
			  	} 	
				
				/*閫夎喘鐑偣寮圭獥鍑芥暟*/
				function pop_heeltype(pop,grid_b10,form_price,cdit_name){
					
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	
					
					$("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						+ "<div class=' popMain'>"
						+"<div class ='pop_title'><h2 class='pop_title-h2'>璺熷瀷</h2></div>"
						+ form_price/*grid_b4*/
						+ "<div style='margin-top:22px;'>"
						
					 );
					 
					$("#form_price").append (grid_b10+ "<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						+ "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"heeltype\")' />");
						
					$("#ui-grid-b10").append(
					"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='缁嗚窡' id='chk-price-2'  /> <label for='chk-price-2'><h4>缁嗚窡</h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閰掓澂璺� id='chk-price-3'  /> <label for='chk-price-3'><h4>閰掓澂璺�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍐呭楂� id='chk-price-4'  /> <label for='chk-price-4'><h4>鍐呭楂�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='闀傜┖璺� id='chk-price-5'  /> <label for='chk-price-5'><h4>闀傜┖璺�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='绮楄窡' id='chk-price-6'  /> <label for='chk-price-6'><h4>绮楄窡</h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏂规牴' id='chk-price-7'  /> <label for='chk-price-7'><h4>鏂规牴</h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='閿ュ舰璺� id='chk-price-8'  /> <label for='chk-price-8'><h4>閿ュ舰璺�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='寮傚舰璺� id='chk-price-9'  /> <label for='chk-price-9'><h4>寮傚舰璺�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='骞宠窡' id='chk-price-10'  /> <label for='chk-price-10'><h4>骞宠窡</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍧¤窡' id='chk-price-11'  /> <label for='chk-price-11'><h4>鍧¤窡</h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='椹箘璺� id='chk-price-12'  /> <label for='chk-price-12'><h4>椹箘璺�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏉剧硶搴� id='chk-price-12'  /> <label for='chk-price-12'><h4>鏉剧硶搴�/h4></label></div>"
				  );
			  	} 	
				
				
			  function pop_leather_f(pop,grid_b11,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	

					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>鐨川鐗瑰緛</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b11+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"leather_f\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b11").append(
						"<div data-role='ui-block-a' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='杞潰鐨� id='chk-price-1' data-mini='true'/> <label for='chk-price-1'><h4>杞潰鐨�/h4></label></div>"
						+"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck'  value='纾ㄧ爞鐨� id='chk-price-2' data-mini='true'/> <label for='chk-price-2'><h4>纾ㄧ爞鐨�/h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-c' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='婕嗙毊' id ='chk-price-3' data-mini='true'/> <label for='chk-price-3'><h4>婕嗙毊</h4></label></div>"	
						+"<div data-role='ui-block-c' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='鍘嬭姳鐨� id ='chk-price-4' data-mini='true'/> <label for='chk-price-4'><h4>鍘嬭姳鐨�/h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='鍗拌姳鐨� id ='chk-price-5' data-mini='true'/> <label for='chk-price-5'><h4>鍗拌姳鐨�/h4></label></div>"
					);
			  	} 					
			
			
			 function pop_bottom_material(pop,grid_b12,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	
					  /*document.write(window.href);*/
					  
					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>闉嬪簳鏉愯川</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b12+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"bottom_material\")'/>"	);
					  $("#ui-grid-b12").append(
"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='姗¤兌搴� id='chk-price-1'  /> <label for='chk-price-1'><h4>姗¤兌搴�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='濉戣兌搴� id='chk-price-2'  /> <label for='chk-price-2'><h4>濉戣兌搴�/h4></label></div>"		          
					  +"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鐪熺毊搴� id='chk-price-3'  /> <label for='chk-price-3'><h4>鐪熺毊搴�/h4></label></div>"	
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鍗冨眰搴� id='chk-price-4'  /> <label for='chk-price-4'><h4>鍗冨眰搴�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鐗涚瓔搴� id='chk-price-5'  /> <label for='chk-price-5'><h4>鐗涚瓔搴�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='澶嶅悎搴� id='chk-price-6'  /> <label for='chk-price-6'><h4>澶嶅悎搴�/h4></label></div>"					 
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='娉℃搏搴� id='chk-price-7'  /> <label for='chk-price-7'><h4>娉℃搏搴�/h4></label></div>"
					  +	"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-b-2'><input type='checkbox' data-theme='c' name='ck' value='鏈ㄥ簳' id='chk-price-8'  /> <label for='chk-price-8'><h4>鏈ㄥ簳</h4></label></div>"
					);
			  	} 		
				
				function pop_upper_h(pop,grid_b13,form_price,cdit_name){
					if ( window.flag == true)
						window.href = "./classify-find-unfold.jsp?";
					else
						window.href = document.URL;	

					  $("#Pop").append("<div class='btnClose'  onclick='return btnClose_onclick()'>X</div>"
						  + "<div class=' popMain'>"
						  +"<div class ='pop_title'><h2 class='pop_title-h2'>娌垮彛楂樺害</h2></div>"
						  + form_price
					  /*	+ grid_b2*/
						  + "<div style='margin-top:22px;'>"
						  
					   );
					  $("#form_price").append(grid_b13+"<input class='btn-clear' type='button' value='娓呴櫎'  onclick='clear_val()' />"
						  + "<input class='btn-sure' type='button' value='纭畾' onclick='passval_price(\"upper_h\")'/>"	); /*onclick='test()'*/
					  $("#ui-grid-b13").append(
						"<div data-role='ui-block-a' class='ui-block-a' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='娴呭彛' id='chk-price-1' data-mini='true'/> <label for='chk-price-1'><h4>娴呭彛</h4></label></div>"
						+"<div data-role='ui-block-b' class='ui-block-b' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck'  value='涓彛' id='chk-price-2' data-mini='true'/> <label for='chk-price-2'><h4>涓彛</h4></label></div>"
						+"<div data-role='ui-block-c' class='ui-block-c' id='ui-block-a-2'><input type='checkbox' data-theme='c' name='ck' value='娣卞彛' id ='chk-price-3' data-mini='true'/> <label for='chk-price-3'><h4>娣卞彛</h4></label></div>"	

					);
			  	} 
			
		function btnClose_onclick() {
				$("#Cover").remove();
				$("#Pop").remove();
			}
 
        function clear_val(){
			$("[name='ck']").removeAttr("checked");//鍙栨秷鍏ㄩ�    		
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
			document.location.href = window.href;
			/*document.write(param);*/
			/*$("#ui-block-price").append("<label>param</label>");*/
			/*return href;*/
		}
		
		function test(){
			document.write(window.href);
		}