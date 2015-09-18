		function checkMobile(){ 
			var sMobile = document.mobileform.mobile.value 
			if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile))){ 
				alert("不是完整的11位手机号或者正确的手机号前七位"); 
				document.mobileform.mobile.focus(); 
				return false; 
			} 
		} 
		
		function out_tel(i){
   			 var v = i.validity;
    		 if(true === v.valueMessing){
    			 /* alert("手机号码填写不完整");  */
      			  i.setCustomValidity("手机号码填写不完整");
   			 }
   			 else{
		        if(true === v.patternMismatch){
		        	/* alert("请输入正确的手机号码");  */
		        	/* showTooltips('tel','请输入正确的手机号码');  */
		            i.setCustomValidity("请输入正确的手机号码"); 
		        }
		        else{
		            i.setCustomValidity("");
		     	}
    		}
		}	
		
		function out_email(i){
  			 var v = i.validity;
   		 if(true === v.valueMessing){
   			 /* alert("手机号码填写不完整");  */
     			  i.setCustomValidity("邮箱填写不完整");
  			 }
  			 else{
		        if(true === v.patternMismatch){
		        	/* alert("请输入正确的手机号码");  */
		        	/* showTooltips('tel','请输入正确的手机号码');  */
		            i.setCustomValidity("请输入正确的邮箱"); 
		        }
		        else{
		            i.setCustomValidity("");
		     	}
   		}
		}
		
				function showTips(txt,time,status)
		{
			var htmlCon = '';
			if(txt != ''){
				if(status != 0 && status != undefined){
					htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:#4AAF33;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="images/ok.png" style="vertical-align: middle;margin-right:5px;" alt="OK，"/>'+txt+'</div>';
				}else{3
					htmlCon = '<div class="tipsBox" style="width:220px;padding:10px;background-color:#D84C31;border-radius:4px;-webkit-border-radius: 4px;-moz-border-radius: 4px;color:#fff;box-shadow:0 0 3px #ddd inset;-webkit-box-shadow: 0 0 3px #ddd inset;text-align:center;position:fixed;top:25%;left:50%;z-index:999999;margin-left:-120px;"><img src="images/err.png" style="vertical-align: middle;margin-right:5px;" alt="Error，"/>'+txt+'</div>';
				}
				$('body').prepend(htmlCon);
				if(time == '' || time == undefined){
					time = 1500; 
				}
				setTimeout(function(){ $('.tipsBox').remove(); },time);
			}
		}
		
		function chkForm(){
			//AJAX提交以及验证表单
			alert("hi"); 
				var email = $("#email").val();
				var passwd = $("#password").val();
/* 				var passwd2 = $('.passwd2').val();
				var verifyCode = $('.verifyCode').val(); */
				var EmailReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
				if(email == ""){
					showTips('请填写您的邮箱~');
					return false;
					
				}/* else if(!EmailReg.test(email)){
					showTips('您的邮箱格式错咯~');
				}else if(passwd == ''){
					showTips('请填写您的密码~');
				}/* else if(passwd2 == ''){
					showTips('请再次输入您的密码~'); 
				}else if(passwd != passwd2 || passwd2 != passwd){
					showTips('两次密码输入不一致呢~');
				}else if(verifyCode == ''){
					showTips('请输入验证码~');
				}*/ 
				else{
					showTips('提交成功~ 即将进入下一步',2500,1);
					return true;
					//此处省略 ajax 提交表单 代码...
				}
			}
			

		function checkPasswords() {
	        var pass1 = document.getElementById("password1");
	        var pass2 = document.getElementById("password2");
	        if (pass1.value != pass2.value)
	        	{
	            pass1.setCustomValidity("两次输入的密码不匹配");
	        	}
	        else
	            pass1.setCustomValidity("");
	    }
		
		  function validate(input,type)
		     {
				var value = input.value;
		 		var url = 'checkUserId.action';
		 		$.ajax({
		 	    	type:"GET",
		 	        url:url,
		 	        data:{value:value,Type:type},
		 	        dataType:"json",
		 	        success:function(msg){
		               if(msg.userIdExsited)
		             	  {
		    	          if(type=="userId")
		    	         {
		             	  input.setCustomValidity("用户名已经存在");
		    	         }
		    	          if(type=="tel")
		     	         {
		              	  input.setCustomValidity("该手机已经被注册");
		     	         }
		    	          if(type=="email")
			     	       {
			              	input.setCustomValidity("该邮箱已经被注册");			     	      	     	         
			     	       }
		             	  }
		               else{
		                  input.setCustomValidity("");  
		               }
		 	        },
		 	        error: function(){
		 	        alert("查询失败");
		 	        return false;
		 	       }
		 	    });
		    	 
		     }