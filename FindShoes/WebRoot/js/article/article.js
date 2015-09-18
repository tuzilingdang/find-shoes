
	  $(document).on('click','.like',function(){
		  //var index = $('.like').index(this);
		  //index += $('.unlike').index(this);
		 // var articleId = $('.articleId').eq(index).val();
		  var articleId = $(this).parent().parent().find('input').val();
		 // alert(articleId);
		  var e = $(this);
		  $.ajax({
			  type:"GET",
			  url:"like.action",
			  data:{articleId:articleId},
			  dataType:"json",
			  success:function(msg){	 
				  if(msg.result){
					  showAnimation(e);
				      $(e).removeClass().addClass("unlike"); 
				  }
	        },
	        error: function(){
	        alert("请先登录");
	        return false;
	        }
		   });		  
	   });
	  
	  //ȡ�����
	  $(document).on('click','.unlike',function(){
		 // var index = $('.opt-table').index(this);
		  //var articleId = $('.articleId').eq(index).val();
		  var e = $(this);
		  var articleId = $(this).parent().parent().find('input').val();
		  $.ajax({
			  type:"GET",
			  url:"unlike.action",
			  data:{articleId:articleId},
			  dataType:"json",
			  success:function(msg){	 
				  if(msg.result){
					  //alert("Cancel suc");
					  showAnimationD(e);
				      $(e).removeClass().addClass("like"); 
				  }
	        },
	        error: function(){
	        alert("请先登录");
	        return false;
	        }
		   });		  
	   });
	  
	  
	  
	
	  $(document).on('click','.collection',function(){
		  var e = $(this);
		  var articleId = $(this).parent().parent().find('input').val();
		  $.ajax({
			  type:"GET",
			  url:"collection.action",
			  data:{articleId:articleId},
			  dataType:"json",
			  success:function(msg){	 
				  if(msg.result){
					  //alert("Cancel suc");
					  showAnimation(e);
				      $(e).removeClass().addClass("uncollection"); 
				  }
	        },
	        error: function(){
	        alert("请先登录");
	        return false;
	        }
		   });		  
	  });
	  
	  $(document).on('click','.uncollection',function(){
		  var e = $(this);
		  var articleId = $(this).parent().parent().find('input').val();
		  $.ajax({
			  type:"GET",
			  url:"uncollection.action",
			  data:{articleId:articleId},
			  dataType:"json",
			  success:function(msg){	 
				  if(msg.result){
					  //alert("Cancel suc");
					  showAnimationD(e);
				      $(e).removeClass().addClass("collection"); 
				  }
	        },
	        error: function(){
	        alert("请先登录");
	        return false;
	        }
		   });		  
	  });
  
   function showAnimation(e){
		   var left = parseInt($(e).offset().left),
	       top = parseInt($(e).offset().top) - 130 ,
	       obj = $(e);
	   $(e).append('<div class="praises"><b>+1<\/b></\div>');
	   $('.praises').css({
	       'position': 'absolute',
	       'z-index': '1',
	       'color': '#FFC0CB',
	       'left': left + 'px',
	       'top': top,
	        'font-size': '14px'
	   }).animate({
	       top: top,
	       left: left + 10
	   }, 'slow', function () {
	       $(this).fadeIn('fast').remove();
	       var Num = parseInt(obj.find('span').text());
	       Num++;
	       obj.find('span').text(Num);
	
	   });
   }	
   function showAnimationD(e){
	   var left = parseInt($(e).offset().left),
       top = parseInt($(e).offset().top) - 130 ,
       obj = $(e);
   $(e).append('<div class="praises"><b>已取消<\/b></\div>');
   $('.praises').css({
       'position': 'absolute',
       'z-index': '1',
       'color': '#FFC0CB',
       'left': left + 'px',
       'top': top,
        'font-size': '14px'
   }).animate({
       top: top,
       left: left + 10
   }, 'slow', function () {
       $(this).fadeIn('fast').remove();
       var Num = parseInt(obj.find('span').text());
       Num--;
       obj.find('span').text(Num);

   });
}	
	
   var tabsSwiper = new Swiper('.swiper-container',{
        speed:500,
        onSlideChangeStart: function(){
            $(".tabs .active").removeClass('active');
            $(".tabs a").eq(tabsSwiper.activeIndex).addClass('active');
        }
    });
    
    $(".tabs a").on('touchstart mousedown',function(e){
        e.preventDefault()
        $(".tabs .active").removeClass('active');
        $(this).addClass('active');
        tabsSwiper.swipeTo($(this).index());
    });
    
    $(".tabs a").click(function(e){
        e.preventDefault();
    });