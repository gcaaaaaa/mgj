 $(document).ready(function () {
 	//加载商品列表
 	$.ajax({
		url:'php/gwc.php',
		type:'get',
		async:true,
	}).done(function(d){//成功
		//console.log(d);
		var arr=JSON.parse(d);
		var str='';
		$(arr).each(function (i) {
			str+= `<li>
			    		<img src="${arr[i].url}" sid="${arr[i].sid}"/>
			    		<p>${arr[i].title}</p>
			    		<span>${arr[i].price}</span>
			    		<div class="goodlist-btn">
			    			加入购物车
			    		</div>
		    		</li>`
		})
		$('#goodlist ul').html(str);
	})
	//根据cookie创建一个商品列表
	function createcart(sid, num) {//sid：图片的编号  num:商品的数量
    $.ajax({
        url: 'php/gwc.php',
    }).done(function(data) {
    	var data=JSON.parse(data);
        for (var i = 0; i < data.length; i++) {
            if (sid == data[i].sid) {//图片的sid和数据里面的sid匹配
                var $clone = $('#gwc-add:hidden').clone(true);//对隐藏的模块进行克隆
                //都是赋值
                $clone.find('.gwc-add-img').find('img').attr('src', data[i].url);
                $clone.find('.gwc-add-img').find('img').attr('sid', data[i].sid);
                $clone.find('.gwc-add-title').html(data[i].title);
                $clone.find('.gwc-add-dj').html(data[i].price);
                $clone.find('.gwc-add-btn2').val(num);
                //计算价格,每个商品的价格
                
                var $dj1 = parseFloat($clone.find('.gwc-add-dj').html());//获取单价
                $clone.find('.gwc-add-pri').html(($dj1 * num).toFixed(2));//num：数量
                $clone.css('display', 'block');//克隆的模块是隐藏，显示出来。
                $('#gwc-add1').append($clone);//追加
                //kong();//购物车是否为空
                totalprice();//总价和总数
            }
        }
    });
}
		//点击加入购物车存cookie
		var sidarr = [];
		var numarr = [];
		function cookieToArray(){
			if(getCookie('cartsid')){
				sidarr=getCookie('cartsid').split(',');
			}
			if(getCookie('cartnum')){
				numarr=getCookie('cartnum').split(',');
			}
		}
		$('#goodlist ul').on('click', '.goodlist-btn', function() {//委托，点击购物车按钮
			var sid=$(this).parent().find('img').attr('sid');//当前按钮对应图片的sid
			cookieToArray();//获取cookie值，放到对应的数组中
			if ($.inArray(sid, sidarr) != -1) {//存在，数量加1
				$('#gwc-add:visible').each(function() {//遍历可视的商品列表
		            if (sid == $('.gwc-add-img img').attr('sid')) {//添加购物车按钮的索引和购物车中商品列表的索引一致
		                var $num = $(this).find('.gwc-add-btn2').val();//获取数量的值
		                $num++;//数量累加
		                $(this).find('.gwc-add-btn2').val($num);//将数量赋值回去
		                //计算价格
		                var $dj = parseFloat($(this).find('.gwc-add-dj').html());//获取当前的单价
		                $(this).find('.gwc-add-pri').html(($dj * $num).toFixed(2));//计算商品总价
		
		                //存储数量到cookie里面。通过编号找数量
		                numarr[$.inArray(sid, sidarr)] = $num;//将数量存储到对应的cookie存放数量的数组中
		                addCookie('cartnum', numarr.toString(), 7);//添加购物车
		                totalprice();
		            }
		        });
			}else{//当前商品列表没有进入购物车，创建商品列表
				sidarr.push(sid);//将当前id添加到数组里面。
		        addCookie('cartsid', sidarr.toString(), 7);//将整个数组添加到cookie
		        numarr.push(1);//走这里数量都是1.
		        addCookie('cartnum', numarr.toString(), 7);
		        createcart(sid, 1);
		        totalprice();
			}
		});
		//3.页面加载检测购物车(cookie里面)是否有数据，有的话创建商品列表
		if (getCookie('cartsid') && getCookie('cartnum')) {
		    var s = getCookie('cartsid').split(',');//存放sid数组
		    var n = getCookie('cartnum').split(',');//存放数量数组
		//  console.log(s);
		//  console.log(n);
		    for (var i = 0; i < s.length; i++) {
		        createcart(s[i], n[i]);//遍历创建商品列表
		    }
		}
		//4计算商品总价和商品总数量
		function totalprice() {//计算总价
		    var total = 0;//总的价格
		    var countnum = 0;//总的数量
		    $('#gwc-add:visible').each(function() {//可视的商品列表进行遍历，循环叠加
		        if ($(this).find('input:checkbox').is(':checked')) {//商品的复选框是选中的
		            total += parseFloat($(this).find('.gwc-add-pri').html());
		            countnum += parseInt($(this).find('.gwc-add-btn2').val());
		        }
		    });
		    //赋值
		    $('#gwc-js-tpri').html(total.toFixed(2));
		    $('.gwc-js-num').find('span').html(countnum);
		}
		//改变商品数量++
		$('.gwc-add-btn3').on('click',function(){
			var $count = $(this).parents('.gwc-add-btn').find('.gwc-add-btn2').val();
		    $count++;
		    if ($count >= 99) {
		        $count = 99;
		    }
		    $(this).parents('.gwc-add-btn').find('.gwc-add-btn2').val($count);
		    $(this).parents('#gwc-add').find('.gwc-add-pri').html(singlegoodsprice($(this)));//改变后的价格
		    totalprice();
		    setcookie($(this));
		})
         //改变商品数量--
		$('.gwc-add-btn1').on('click', function() {
		    var $count = $(this).parents('.gwc-add-btn').find('.gwc-add-btn2').val();
		    $count--;
		    if ($count <= 1) {
		        $count = 1;
		    }
		    $(this).parents('.gwc-add-btn').find('.gwc-add-btn2').val($count);
		    $(this).parents('#gwc-add').find('.gwc-add-pri').html(singlegoodsprice($(this)));//改变后的价格
		    totalprice();
		    setcookie($(this));
		});
		
		
		//直接输入改变数量
		$('.gwc-add-btn2').on('input', function() {
		    var $reg = /^\d+$/g; //只能输入数字
		    var $value = parseInt($(this).val());
		    if ($reg.test($value)) {
		        if ($value >= 99) {//限定范围
		            $(this).val(99);
		        } else if ($value <= 0) {
		            $(this).val(1);
		        } else {
		            $(this).val($value);
		        }
		    } else {
		        $(this).val(1);
		    }
		    $(this).parents('#gwc-add').find('.gwc-add-pri').html(singlegoodsprice($(this)));//改变后的价格
		    totalprice();
		    setcookie($(this));
		});
		
		//7.计算数量改变后单个商品的价格
		function singlegoodsprice(row) { //row:当前元素
		    var $dj = parseFloat(row.parents('#gwc-add').find('.gwc-add-dj').html());
		    var $cnum = parseInt(row.parents('.gwc-add-btn').find('.gwc-add-btn2').val());
		    return ($dj * $cnum).toFixed(2);
		}
		
		//9.将改变后的数量的值存放到cookie
		function setcookie(obj) { //obj:当前操作的对象
		    cookieToArray();
		    var $index = obj.parents('#gwc-add').find('img').attr('sid');
		    numarr[sidarr.indexOf($index)] = obj.parents('#gwc-add').find('.gwc-add-btn2').val();
		    addCookie('cartnum', numarr.toString(), 7);
		}
		
		
		//8.全选
		$('.allcheck').on('change', function() {
		    $('#gwc-add').find('input:checkbox').prop('checked', $(this).prop('checked'));
		    $('.allcheck').prop('checked', $(this).prop('checked'));
		    totalprice();//求和
		});
		
		var $inputchecked = $('#gwc-add').find('input:checkbox');//获取委托元素
		$('#gwc-add1').on('change', $inputchecked, function() {
		    var $inputs = $('#gwc-add:visible').find('input:checkbox'); //放内部
		    if ($('#gwc-add:visible').find('input:checked').length == $inputs.size()) {
		        $('.allcheck').prop('checked', true);
		    } else {
		        $('.allcheck').prop('checked', false);
		    }
		    totalprice();
		});
		

		//删除cookie的函数
		function delgoodslist(sid, sidarr) {//sid：当前的sid，sidarr:cookie的sid的值
		    var index = -1;
		    for (var i = 0; i < sidarr.length; i++) {
		        if (sid == sidarr[i]) {
		            index = i;
		        }
		    }
		    sidarr.splice(index, 1);//删除数组对应的值
		    numarr.splice(index, 1);//删除数组对应的值
		    addCookie('cartsid', sidarr.toString(), 7);//添加cookie
		    addCookie('cartnum', numarr.toString(), 7);
		}
		
		//删除单个商品的函数(委托)
		$('#gwc-add').on('click', '.gwc-add-del', function(ev) {
		    cookieToArray(); //转数组
		   if(confirm('你确定要删除吗？')){
		   	 $(this).first().parents('#gwc-add').remove();
		   }
		    delgoodslist($(this).first().parents('#gwc-add').find('img').attr('sid'), sidarr);
		    totalprice();
		});
		
		
		//删除全部商品的函数
		$('.gwc-js-del').on('click', function() {
		    $('#gwc-add:visible').each(function() {
		        if ($(this).find('input:checkbox').is(':checked')) {
		            $(this).remove();
		            delgoodslist($(this).find('img').attr('sid'), sidarr);
		        }
		    });
		    totalprice();
		});

	
	
	
	
	
	
	
	
	
	
 })
 
 