$(document).ready(function () {
	$.ajax({
		url:'php/dgtp.php',
		type:'get',
		async:true,
	}).done(function(d){//成功
		var arr=JSON.parse(d);
		var str='';
		var str1='';
		var str2='';
		var str3='';
		var str4='';
		var str5='';
		var str6='';
		var str7='';
		$(arr.data1).each(function (i) {
			str+= `<a href="#"><img src=${arr.data1[i].url}/></a>`;
		})
		$('#limitFast').html(str);
		//限时抢购
		$(arr.data2).each(function (i) {
			str1+= `<a href="#"><img src=${arr.data2[i].url}/></a>`;
		})
		$('.womenClothes-main-middle').html(str1);
		//rmtx上面
		$(arr.data3).each(function (i) {
			str2+= `<a href="#">
    		<div class="womenClothes-bt1 clear left">
    			<div class="womenClothes-bt1l left">
    			<span>${arr.data3[i].title}</span>
    			<p>${arr.data3[i].price}</p>
    		    </div>
    		    <div class="womenClothes-bt1r left">
    			<img src=${arr.data3[i].url}/>
    		    </div>
    		</div>
    	</a>`;
		})
		$('.womenClothes-main-bottom').html(str2);
		//rmtx
		$(arr.data4).each(function (i) {
			str3+= `<li class="guessLike-li"><a href="#">
						<img src=${arr.data4[i].url} alt="" />
						<div class="yinchang">
							${arr.data4[i].title1}
						</div>
					<div class="guessLike-wp">
						<div class="guessLike-w">
							${arr.data4[i].title}
						</div>	
						<div class="guessLike-p clear">
							<div class="guessLike-pl left">
							     <b>¥${arr.data4[i].price}</b><span>¥${arr.data4[i].price1}</span>
							</div>
							<div class="guessLike-pm left">
								<img src=${arr.data4[i].url1}/>
							</div>
							<div class="guessLike-pr left">
								<span>${arr.data4[i].num}</span>
							</div>
						</div>
					</div>
					</a></li>`;
		})
		$('#guessLike ul').html(str3);
		//猜你喜欢
		$(arr.data5).each(function (i) {
			str4+= `<div class="shoesDabie-r-main clear">
				        	<div class="shoesDabie-r-mainl left">
				        		<img src=${arr.data5[i].url}/>
				        	</div>
				        	<div class="shoesDabie-r-mainr left">
				        		<p>${arr.data5[i].title}</p>
				        		<span>¥${arr.data5[i].price}</span>
				        	</div>
				        </div>`;
		})
		$('.shoesDabie-r-m').html(str4);
		//console.log(arr.data6)
		$(arr.data7).each(function (i) {
			str6+= `<div class="shoesDabie-r-main clear">
				        	<div class="shoesDabie-r-mainl left">
				        		<img src=${arr.data7[i].url}/>
				        	</div>
				        	<div class="shoesDabie-r-mainr left">
				        		<p>${arr.data7[i].title}</p>
				        		<span>¥${arr.data7[i].peice}</span>
				        	</div>
				        </div>`;
		})
		$('.shoesDabie-r-m1').html(str6);
		//console.log(arr.data8)
		$(arr.data8).each(function (i) {
			str7+= `<div class="shoesDabie-r-main clear">
				        	<div class="shoesDabie-r-mainl left">
				        		<img src=${arr.data8[i].url}/>
				        	</div>
				        	<div class="shoesDabie-r-mainr left">
				        		<p>${arr.data8[i].title}</p>
				        		<span>¥${arr.data8[i].peice}</span>
				        	</div>
				        </div>`;
		})
		$('.shoesDabie-r-m2').html(str7);
		//热销商品
		$(arr.data6).each(function (i) {
			str5+= `div class="swiper-slide"><img src=${arr.data6[i].url}/></div>
						        <div class="swiper-slide"><img src=${arr.data6[i].url}/></div>`;
		})
		$('.womenClothes-top .swiper-wrapper').html(str5);
		//热销商品
	})
})
