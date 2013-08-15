
<@m_site_common_header />




<#assign  pageSearchNav=pageexec.upPageNav("user_comment","","-comment_date")  >
				

<div class="ahinfo_center">

				<div class="ahinfo_page_box">

					<div class="ahinfo_page_nav"><a href="/">首页</a> &gt; <a href="">顾客评论</a></div>
					<div class="ahinfo_post_left">
						<div class="c_img"></div>
					</div>
					<div class="ahinfo_post_right">
						<div class="c_top">顾客口碑</div>
						<div class="c_box">
							
							<#list pageSearchNav.getPageData() as el> 
								
								
								<div class="c_item">
									<div class="c_title">${el["info_title"]}</div>
									<div class="c_info">${el["note"]}</div>
									<div class="c_link">
										<div class="c_more">了解更多&gt;</div>
										<div class="c_user">用户：${el["user_name"]}    发表于：${el["comment_date"]}</div>
									</div>
									<div class="clearfix"></div>
								</div>
								
							</#list>
							
							
							<div class="index_pagenav">
								<@m_site_common_site_nav pageSearchNav />
							</div>
										
						
						</div>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
<@m_site_common_footer />



