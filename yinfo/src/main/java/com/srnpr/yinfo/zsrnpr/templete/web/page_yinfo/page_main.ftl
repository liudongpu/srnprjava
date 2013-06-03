

<@m_site_common_header />

	<div class="y_center">
		<div class="yinfo_main">
			<div class="index_center">
				<div class="index_adv">
					<div id="myCarousel" class="carousel slide">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1" class=""></li>
							<li data-target="#myCarousel" data-slide-to="2" class=""></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img
									src="http://www.bootcss.com/assets/img/bootstrap-mdo-sfmoma-01.jpg"
									alt="">
								<div class="carousel-caption">

									<p>
										<a href="">Cras justo odio, dapibus ac facilisis in,
											egestas eget quam. </a>
									</p>
								</div>
							</div>
							<div class="item">
								<img
									src="http://www.bootcss.com/assets/img/bootstrap-mdo-sfmoma-02.jpg"
									alt="">
								<div class="carousel-caption">

									<p>Cras justo odio, dapibus ac facilisis in, egestas eget
										quam.</p>
								</div>
							</div>
							<div class="item">
								<img
									src="http://www.bootcss.com/assets/img/bootstrap-mdo-sfmoma-03.jpg"
									alt="">
								<div class="carousel-caption">

									<p>Cras justo odio, dapibus ac facilisis in, egestas eget
										quam.</p>
								</div>
							</div>
						</div>
						<a class="left carousel-control b_none" href="#myCarousel"
							data-slide="prev">‹</a> <a class="right carousel-control b_none"
							href="#myCarousel" data-slide="next">›</a>
					</div>
				</div>
				<div class="index_todo"></div>
			</div>

			<div class="clearfix"></div>
			<div>
				<h3>本周热门</h3>
			</div>
			<div class="index_list">
				<div class="c_box">
				
					<#list pageexec.upDataOrder("y_info","-zid") as el>
					
						<div class="c_item <#if (el_index%3==0)>c_first</#if>">
							<div class="c_img">
								<a href="yinfo/home-home-${el["uid"]}" target="_blank"><img src="${el["main_img"]}" /></a>
							</div>
							<div class="c_text">
								<h4><a href="yinfo/home-home-${el["uid"]}" target="_blank">${el["name"]}</a></h4>
								<div class="c_in">
									<div class="c_left">保障：</div>
									<div class="c_right">
										<div class="yinfo_keep">
											<ul>
												<li class="c_0 c_a"></li>
												<li class="c_1 c_a"></li>
												<li class="c_2 c_a"></li>
												<li class="c_3 c_a"></li>
												<li class="c_4 c_a"></li>
												<li class="c_5 c_a"></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="c_in">
									<div class="c_left">评价：</div>
									<div class="c_right">
										<div class="yinfo_star">
											<div class="c_line" style="width: 70%;"></div>
										</div>
										<div class="c_tips">好评率：10%</div>
									</div>
								</div>
								<div class="c_in">
									<div class="c_left">地区：</div>
									<div class="c_right">北京 昌平区 回龙观</div>
								</div>
								<div class="c_in">
									<div class="c_left">床位：</div>
									<div class="c_right">${el["q_bednumber"]}</div>
								</div>
								<div class="clearfix"></div>
								<div class="c_buttons">
									<a href="yinfo/home-home-${el["uid"]}" target="_blank" class="btn btn-success">去看看</a>
								</div>
							</div>
	
						</div>
					
					
					
					
					</#list>
				
					
				</div>
			</div>
		</div>
	</div>







	<script>
		$('.yinfo_nav_box .c_tip').srnprtip({
			target : '.yinfo_nav_query'
			,show:true

		});

		$('.carousel').hover(function() {
			$(this).find('.carousel-control').show()
		}, function() {
			$(this).find('.carousel-control').hide()
		});

		$('.carousel').carousel({
			interval : 4000
		});
	</script>



<@m_site_common_footer />
