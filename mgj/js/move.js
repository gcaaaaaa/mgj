    $(document).ready(function () {
    	//三级导航
			$('#subnav ul>li').on('mouseenter',function () {
					$('#san-subnav').show();
			})
			$('#san-subnav').on('mouseleave',function () {
					$('#san-subnav').hide();
			})
			//倒计时
			var intDiff = parseInt(60000);//倒计时总秒数量
			function timer(intDiff){
			    window.setInterval(function(){
			    var day=0,
			        hour=0,
			        minute=0,
			        second=0;//时间默认值        
			    if(intDiff > 0){
			        day = Math.floor(intDiff / (60 * 60 * 24));
			        hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
			        minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
			        second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
			    }
			    if (minute <= 9) minute = '0' + minute;
			    if (second <= 9) second = '0' + second;
			    $('.hourse').html('<s id="h"></s>'+hour);
			    $('.minter').html('<s></s>'+minute);
			    $('.second').html('<s></s>'+second);
			    intDiff--;
			    }, 1000);
			} 
			$(function(){
			    timer(intDiff);
			}); 
			//右边楼梯
			
			$(window).on('scroll',function () {
				//显示顶部搜索
				var $topsearch=$(window).scrollTop();
		    		if ($topsearch>=560) {
		    			$('#top').show();
		    		} else{
		    			$('#top').hide();
		    		}
				
				
				
    		//显示导航
    		var $scroll=$(window).scrollTop();
    		if ($scroll>=560) {
    			$('#right').show();
    		} else{
    			$('#right').hide();
    		}
    		//滚动给导航加样式
    		$('.louti').each(function (i) {
    			var $top1=$(this).offset().top+400;
    			if ($top1>$scroll) {
    				$('#right ul li').removeClass('active');
    				$('#right ul li').eq(i).addClass('active');
    				return false;
    			}
    		})
    	})
    		//点击导航到相应位置
    		var $oli=$('#right ul li').not('.last');
    		$oli.on('click',function () {
    			$(this).addClass('active').siblings().removeClass('active');
    			var $top=$('.louti').eq($(this).index()).offset().top;
    			$('html,body').animate({
    				scrollTop:$top
    			})
    			
    		})
    		//左侧点击回到顶部
    		$('.left-top').on('click',function () {
    			$('html,body').animate({
    				scrollTop:0
    			})
    		})
        //换一批
        var num=0;
        $('.shoesDabie-r-topr').on('click',function () {
        	 num++;
        	if (num>2) {    
        		num=0;
        		$('.huanyipi').eq(0).show().siblings('.huanyipi').hide();
        	} else{
        		$('.huanyipi').eq(num).show().siblings('.huanyipi').hide();
        	   
        	}
        })
    })







