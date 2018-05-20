		$('#form').on('input',function () {
				$.ajax({
					type:"get",
					url:`http://list.mogujie.com/module/mget?code=tips&keyWord=${$(this).val()}`,
					async:true,
					dataType:'jsonp'
				}).done(function(data){
					var arr=data.data.tips.data;
					var str='';
						$(arr).each(function (i) {
							str+='<li><a href="http://list.mogujie.com/s?q='+arr[i].query+'&acm=3.mce.1_10_13xvo.17721.33692.rP18dqRHxYef1.p_1-sd_115_116-mid_17721-mdt_tips-lc_201&ptp=1._mf1_1239_15261.0.0.DOH4wTuH&f=baidusem_4uv5iimn1v">'+arr[i].query+'</a></li>'
						})
						$('.search-m-box-ul').html(str);
				})
		})
				
		//搜索接口