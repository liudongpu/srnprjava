
<@m_mb_common_header nav="main"  type="2"/>

<#assign mb_index_adv=pageexec.upData("info_adv")>

<#assign mb_index_list=pageexec.upDataTop("info_news","file_url!=''","-create_time",2)>




	<div class="mobile_lay_main">
		<div class="mobile_mindex_body">
			<div class="mobile_w_h5"></div>
			<div class="mobile_mindex_adv">
			
			
				<div class="swiper-container  mobile_mindex_adv_box">
					<div class="swiper-wrapper">
						
						<#list mb_index_adv as el>

							
							<div class="swiper-slide">
							<a href="${el["link_url"]?replace("newsinfo/","newsinfo/m")}">
							<img
								src="${bd_img_cdn_url}${el["file_url"]}"
								alt="" />
							</a>
							</div>
						</#list>	




					</div>
					
					<div class="swiper-pagination"></div>

				</div>
			
			
				<script>        
				  var mySwiper = new Swiper ('.swiper-container', {
				    //direction: 'vertical',
				    loop: true,
				    
				    // 如果需要分页器
				    pagination: '.swiper-pagination',
				    autoplay:5000
				    
				    
				  })        
  			</script>
			
				
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
						<a href="/newsinfo/mnotice-list">
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_two"></div>
						<div class="mobile_mindex_menu_text">公告</div>
						</a>

					</div>
					<div class="mobile_mindex_menu_item mobile_w_border_r">
						<a href="/newsinfo/muserentall-user">
						<div class="mobile_w_h20"></div>
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_three"></div>
						<div class="mobile_mindex_menu_text">委托竞投</div>
						</a>
					</div>
					<div class="mobile_mindex_menu_item">

						<div class="mobile_w_h20"></div>
						<a href="/newsinfo/muserbidagree-user">
						<div class="mobile_mindex_menu_ico mobile_mindex_menu_four"></div>
						<div class="mobile_mindex_menu_text">竞投办理</div>
						</a>

					</div>
				</div>

			</div>
			<div class="mobile_w_h20  mobile_w_border_t"></div>
		</div>
	</div>

<@m_mb_common_footer />
</body>