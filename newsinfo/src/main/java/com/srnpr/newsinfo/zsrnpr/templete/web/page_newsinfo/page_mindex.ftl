
<@m_mb_common_header nav="main"  />

<#assign mb_index_adv=pageexec.upData("info_adv")>

<#assign mb_index_list=pageexec.upDataTop("info_news","file_url!=''","-create_time",2)>




	<div class="mobile_lay_main">
		<div class="mobile_mindex_body">
			<div class="mobile_w_h5"></div>
			<div class="mobile_mindex_adv">
				<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators">
						
						
						<#list mb_index_adv as el>

							<li data-target="#myCarousel" data-slide-to="${el_index}"  <#if el_index==0>class="active"</#if>></li>
							
						</#list>						

					</ol>
					<!-- Carousel items -->
					<div class="carousel-inner">
					
					
						<#list mb_index_adv as el>
							 <div class="item <#if el_index==0>active</#if>">
								  <img
	                            src="${bd_img_cdn_url}${el["file_url"]}"
	                            alt="" title="#htmlcaption_${el_index}" />
							 </div>
						</#list>
					
					
					
						
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
						href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			<div class="mobile_w_h20 "></div>
			<div class="mobile_mindex_tips mobile_w_bg_white">
				<div class="mobile_mindex_tips_left"></div>
				<div class="mobile_mindex_tips_text">博观资讯</div>
				<div class="mobile_mindex_tips_right"><a href="/newsinfo/mnews-list"><div class="mobile_base_inbox"></div></a></div>
			</div>
			<div class="mobile_mindex_content mobile_w_bg_white">

				<#list mb_index_list as el>
				<div class="mobile_mindex_content_item 	<#if el_index==0>mobile_w_border_b</#if> ">
				<a href="/newsinfo/mcontent-content-${el["uid"]}">
					<div class="mobile_mindex_content_left">
						<div class="mobile_mindex_content_title"> ${el["title"]}</div>
						<div class="mobile_w_h20"></div>
						<div class="mobile_mindex_content_ico">
							<div  <#if el_index==0>class="mobile_mindex_content_ico_one"</#if>  <#if el_index==1>class="mobile_mindex_content_ico_two"</#if> ></div>
						</div>
						<div class="mobile_mindex_content_author">博观拍卖</div>
						<div class="mobile_mindex_content_date">${el["create_time"]}</div>
					</div>
					<div class="mobile_mindex_content_right">
						<img
							src="${bd_img_cdn_url}${el["file_url"]}" />
					</div>
					</a>
				</div>

				</#list>



				
			</div>

			<div class="mobile_w_h20 mobile_w_border_b mobile_w_border_t"></div>
			<div class="mobile_mindex_menu">
				<div class="mobile_mindex_menu_box">
					<div class="mobile_mindex_menu_item mobile_w_border_r">
						<div class="mobile_w_h20"></div>
						<a href="/newsinfo/mauction-list">
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_one"></div>
						<div class="mobile_mindex_menu_text">预展/结果</div>
						</a>
					</div>
					<div class="mobile_mindex_menu_item mobile_w_border_r">

						<div class="mobile_w_h20"></div>
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_two"></div>
						<div class="mobile_mindex_menu_text">公告</div>

					</div>
					<div class="mobile_mindex_menu_item mobile_w_border_r">

						<div class="mobile_w_h20"></div>
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_three"></div>
						<div class="mobile_mindex_menu_text">委托竞投</div>

					</div>
					<div class="mobile_mindex_menu_item">

						<div class="mobile_w_h20"></div>
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_four"></div>
						<div class="mobile_mindex_menu_text">竞投办理</div>

					</div>
				</div>

			</div>
			<div class="mobile_w_h20  mobile_w_border_t"></div>
		</div>
	</div>

<@m_mb_common_footer />
</body>