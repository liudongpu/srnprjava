

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
							<@m_site_common_site_list el "main"/>
	
						</div>
					
					
					
					
					</#list>
				
					
				</div>
			</div>
		</div>
	</div>







	<script>
		$(document).ready(function() {
			zen.yinfo.headernav(true);
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
