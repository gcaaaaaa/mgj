	$(document).ready(function () {
		//当季热卖接口
		$.ajax({
				url:'php/djrm.php',
				type:'get',
				async:true,
			}).done(function(d){//成功
				var arr=JSON.parse(d);
				var html='';
				$(arr).each(function (i) {
					html+= `<li class=clss${arr[i].id}>
								<a href="#">${arr[i].title}</a>
							</li>`;
				})
				$('.san-subnav1 ul').html(html);
			})
		//流行新品接口
		$.ajax({
				url:'php/lxxp.php',
				type:'get',
				async:true,
			}).done(function(d){//成功
				var arr1=JSON.parse(d);
				var html1='';
				$(arr1).each(function (i) {
					html1+= `<li class=clss${arr1[i].id}>
								<a href="#">${arr1[i].title}</a>
							</li>`;
				})
				$('.san-subnav2 ul').html(html1);
			})
		//潮流时尚接口
		$.ajax({
				url:'php/clss.php',
				type:'get',
				async:true,
			}).done(function(d){//成功
				var arr2=JSON.parse(d);
				var html2='';
				$(arr2).each(function (i) {
					html2+= `<li class=clss${arr2[i].id}>
								<a href="#">${arr2[i].title}</a>
							</li>`;
				})
				$('.san-subnav3 ul').html(html2);
			})
		//导航猜你喜欢接口
			$.ajax({
				url:'php/sancnxh.php',
				type:'get',
				async:true,
			}).done(function(d){//成功
				var arr3=JSON.parse(d);
				var html3='';
				$(arr3).each(function (i) {
					html3+= `<li class=sancnxh${arr3[i].id}>
						<a href="#"><img src=${arr3[i].url} alt="" /><span>${arr3[i].title}</span></a></li>`;
				})
				$('.san-subnav-r ul').html(html3);
			})
	})
	
	
		   
	
	        