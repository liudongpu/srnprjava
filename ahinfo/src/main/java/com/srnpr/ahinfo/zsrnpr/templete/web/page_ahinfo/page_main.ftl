
<@m_site_common_header />

			<div class="ahinfo_center">

				<div class="ahinfo_default_adv">

					<div id="myCarousel" class="carousel slide">

						<div class="carousel-inner">
						
							<#list pageexec.upDataTop("info_adv","","-zid",4) as el>
							
							
							<div class="item <#if (el_index==0)>active</#if>">
								<img
									src="${el["file_url"]}"
									alt="${el["title"]}">
							</div>		
							</#list>										
						</div>
						<a class="left carousel-control b_none" href="#myCarousel"
							data-slide="prev">‹</a> <a class="right carousel-control b_none"
							href="#myCarousel" data-slide="next">›</a>


						<div class="ahinfo_default_adv_change ">
							<ul class="carousel-indicators">
							
							<#list pageexec.upDataTop("info_adv","","-zid",4) as el>
								<li data-target="#myCarousel" data-slide-to="${el_index}" class="<#if (el_index==0)>active</#if>">
									<div class="c_img b_none">
										<img
											src="${el["file_url"]}" />
									</div>
									<div class="c_title">
										<i class="icon-th"></i><span>${el["title"]}</span>
									</div>
								</li>
							
							</#list>

								
							</ul>




						</div>
					</div>


				</div>

				<div class="ahinfo_default_list">
					<div class="c_title">
						<span>顾客口碑&nbsp;·&nbsp;</span>奥华专业十一年
					</div>
					<div class="c_center">

						<div class="c_left">
							<#assign page_adv_left=pageexec.upDataOne("y_adv","position_cid","32620003")>
						<a href="${page_adv_left["link_url"]}">
							<img
								src="${page_adv_left["file_url"]}" />
								</a>
						</div>
						<div class="c_right">
						<#assign page_adv_right=pageexec.upDataOne("y_adv","position_cid","32620001")>
						<a href="${page_adv_right["link_url"]}">
							<img
								src="${page_adv_right["file_url"]}" />
								</a>
						</div>
					</div>



				</div>
				<div class="b_h_30"></div>

			</div>

			


	<script>
		$(document).ready(function() {
			

			$('.carousel').hover(function() {
				$(this).find('.carousel-control').show()
			}, function() {
				$(this).find('.carousel-control').hide()
			});

			$('.carousel').carousel({
				interval : 6000
			});

			$('.ahinfo_default_adv_change li').each(function(n, el) {
				$(this).hover(function() {
					$(this).addClass('c_active');
					$(this).find('.c_img').removeClass('b_none');
				}, function() {
					$(this).removeClass('c_active');
					$(this).find('.c_img').addClass('b_none');
				});
			});

		});
	</script>




<@m_site_common_footer />



