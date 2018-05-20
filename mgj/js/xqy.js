            	$(function () {
            		var $wrap=$('.main-left');
            		var $spic=$('#spic');
            		var $bpic=$('#bpic');
            		var $sf=$('#sf');
            		var $bf=$('#bf');
            		var $left=$('#left');
            		var $right=$('#right');
            		$spic.on('mouseenter',function () {
            			     $sf.css('visibility','visible').css('width',$spic.width()*$bf.width()/$bpic.width()).css('height',$spic.height()*$bf.height()/$bpic.height());
            			$bf.css('visibility','visible');
            			$spic.on('mousemove',function (ev) {
            				var ev=ev||window.event;
            				var x = ev.pageX - $wrap.offset().left - $sf.width() / 2;
				            var y = ev.pageY - $wrap.offset().top - $sf.height() / 2;
				            var scale = $bf.width() / $sf.width();
				            if (x < 0) {
				                x = 0;
				            } else if (x >= $spic.width() - $sf.width() - 2) {
				                x = $spic.width() - $sf.width() - 2;
				            }
				            if (y < 0) {
				                y = 0;
				            } else if (y >= $spic.height() - $sf.height() - 2) {
				                y = $spic.height - $sf.height - 2;
				            }
					            $sf.css('left',x);
					            $sf.css('top',y);
					            $bpic.css('left',-x*scale);
					            $bpic.css('top',-y*scale);   
            			})
            		})
            		$spic.on('mouseleave',function () {
            				$sf.css('visibility','hidden');
            				$bf.css('visibility','hidden');
            			}) 
            		
            		
            		$('#list li').each(function (i) {
            			$('#list li').eq(i).on('click',function () {
            				$spic.find('img').eq(0).attr('src',$(this).find('img').eq(0).attr('src'));
            			$bpic.attr('src',$(this).find('img').eq(0).attr('src'));
            			})
            		})          		
            		var liwidth=$('#list li').eq(0).width();
            		var num1=6;
            		$('#list ul').css('width',liwidth*num1);
            		if ($('#list li').length<=6) {
            			$right.css('color','#fff');
            		}
            		$right.on('click',function(){
            			num1++
            			if (num1>5) {
            				$left.css('color','#333').css('pointer-events','auto');
            			}
            			if (num1>6) {
            				$right.css('color','#fff').css('pointer-events','none');
            			}
            			$('#list ul').css('left',-(num1-6)*liwidth);
            		})
            		$left.on('click',function(){
            			num1--
            			if (num1<7) {
            				$left.css('color','#fff').css('pointer-events','none');
            			}
            			if (num1<7) {
            				$right.css('color','#333').css('pointer-events','auto');
            			}
            			$('#list ul').css('left',-(num1-6)*liwidth);
            		})
            	})
            	$(function () {
					var num2=1;
				     $('#xq-num2').on('click',function () {
				     	num2++;
				     	$('#xq-numinp').val(num2);
				     	$('#xq-num1').css('pointer-events','auto')
				     })
				     $('#xq-num1').on('click',function () {
				     	if($('#xq-numinp').val()<=1){
				     		$(this).css('pointer-events','none')
				     	}
				     	num2--;
				     	$('#xq-numinp').val(num2);
				     })
				     //放大镜
				     
				     
				     
			//第一步思路：将商品的id和数量存放的cookie和数据库里面。
			//第二步思路：定义两个数组接收存放的数量和id,提前约定存放cookie的名称。
			var sidarr = [];
			var numarr = [];
			function getcookievalue(){
				if(getCookie('cartsid')){//cartsid：cookie里面id的名称
					sidarr=getCookie('cartsid').split(',');
				}
				
				if(getCookie('cartnum')){//cartnum：cookie里面数量的名称
					numarr=getCookie('cartnum').split(',');
				}
			}
			
			//第三步思路：通过判断商品的id是否存在上面获取的sid里面。
			//如果存在，已经在购物车里面了，否则将商品sid添加到cookie里面
			$('#xq-gm2').on('click', function() {
				var sid = $('.main-left').find('.loadimg').attr('sid');//当前按钮对应图片的sid
				//console.log(sid)
				getcookievalue();//获取商品的id和数量,放到对应的数组中,利用数组进行匹配
				if ($.inArray(sid, sidarr) != -1) {//是否存在cookie中
					//将之前的数据和当前存的数据相加，存放cookie里面
					if(getCookie('cartnum')==''){
						var num=parseInt($('#xq-numinp').val());
						numarr[$.inArray(sid,sidarr)]=num;
						addCookie('cartnum', numarr.toString(), 7);//修改后的结果
						sidarr[$.inArray(sid,sidarr)]=sid;//将当前id添加到对应的位置。
        				addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
					}else{
						var num=parseInt(numarr[$.inArray(sid,sidarr)])+parseInt($('#xq-numinp').val());
						numarr[$.inArray(sid,sidarr)]=num;
						addCookie('cartnum', numarr.toString(), 7);//修改后的结果
					}
					
				}else{//不存在
					sidarr.push(sid);//将当前id添加到数组里面。
        			addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
        			numarr.push($('#xq-numinp').val());//存放输入的数量，默认是1
        			addCookie('cartnum', numarr.toString(), 7);
				}
			});
				     
				     
				     
				     
				     
				     
				     
				     
				})
            	
            	
            	
			     
			     
           