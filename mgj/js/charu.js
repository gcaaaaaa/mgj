 $(document).ready(function () {
 	$.ajax({
		url:'php/jrbq.php',
		type:'get',
		async:true,
	}).done(function(d){//成功
		var arr=JSON.parse(d);
		var str='';
		var str1='';
		var str2='';
		$(arr.data1).each(function (i) {
			str+= `<li class="lunb">
		   <a href="#"><img src=${arr.data1[i].url} alt="" />
		   <div class="lunb-p">
		   <p>${arr.data1[i].title}</p>
	       <div class="lunb-price">
	       <span class="lunb-price1">¥${arr.data1[i].price}</span>
	       <span class="lunb-price2">¥${arr.data1[i].price1}</span>
	       </div></div></a></li>`;
		})
		$('.s-lunbo').html(str);
		//第一版
		$(arr.data2).each(function (i) {
			str1+= `<li class="lunb">
		   <a href="#"><img src=${arr.data2[i].url} alt="" />
		   <div class="lunb-p">
		   <p>${arr.data2[i].title}</p>
	       <div class="lunb-price">
	       <span class="lunb-price1">¥${arr.data2[i].price}</span>
	       <span class="lunb-price2">¥${arr.data2[i].price1}</span>
	       </div></div></a></li>`;
		})
		$('.s-lunbo1').html(str1);
		//第二版
		$(arr.data3).each(function (i) {
			str2+= `<li class="lunb">
		   <a href="#"><img src=${arr.data3[i].url} alt="" />
		   <div class="lunb-p">
		   <p>${arr.data3[i].title}</p>
	       <div class="lunb-price">
	       <span class="lunb-price1">¥${arr.data3[i].price}</span>
	       <span class="lunb-price2">¥${arr.data3[i].price1}</span>
	       </div></div></a></li>`;
		})
		$('.s-lunbo2').html(str2);
		//第三版
		
	})
 })
 
 