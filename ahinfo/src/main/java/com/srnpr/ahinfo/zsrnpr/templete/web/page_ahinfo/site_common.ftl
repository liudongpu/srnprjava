
<#macro m_site_common_header nav="" title="" >

<title>奥华</title>

</head>
<body class="ahinfo_body">

	<div class="ahinfo_pageback">

		<div class="ahinfo_width ahinfo_main b_static">
			<div class="ahinfo_top">
				<div class="ahinfo_head">
					<div class="c_top">
						<div class="c_inline"></div>
						<div class="c_user" id="ahinfo_header_user"><a href="/ahinfo/reg-reg">现在注册</a>&nbsp;|&nbsp;<a href="/ahinfo/login-login">立即登录</a></div>
						<div class="c_phone">美丽专线：<span>400-888-8888</span></div>
					</div>
					<div class="c_nav">
						<ul>
							<li class="ahinfo_head_item_0">关于奥华</li>
							<li class="ahinfo_head_item_1">最新动态</li>
							<li class="ahinfo_head_item_2">服务项目</li>
							<li class="ahinfo_head_item_3">合作加盟</li>
							<li class="ahinfo_head_item_4">顾客口碑</li>
						</ul>
					</div>
				</div>
				<div class="ahinfo_nav">
					<div class="c_item ahinfo_nav_item_0 b_none" menu_name="About/关于奥华">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/static-1001" menu_id="0-0">公司概况</a></li>
							<li><a href="/ahinfo/static-1002" menu_id="0-1">品牌理念</a></li>
							<li><a href="/ahinfo/static-1003" menu_id="0-2">品牌广告</a></li>
							<li><a href="/ahinfo/people-0" menu_id="0-3">管理团队</a></li>
							<li><a href="/ahinfo/static-1004" menu_id="0-4">奥华历程</a></li>
							<li><a href="/ahinfo/static-1005" menu_id="0-5">企业投资者</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_1 b_none" menu_name="News/最新动态">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/newslist-newslist" menu_id="1-0">新品速递</a></li>
							<li><a href="/ahinfo/newitem-newitem" menu_id="1-1">最新护理</a></li>
							<li><a href="/ahinfo/newgood-newgood" menu_id="1-2">热卖臻品</a></li>
							<li><a href="/ahinfo/static-1009" menu_id="1-3">本月特惠</a></li>
							<li><a href="/ahinfo/shopnew-shopnew" menu_id="1-4">新店开业</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_2 b_none" menu_name="Project/服务项目">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/service-service" menu_id="2-0">服务项目</a></li>
							<li><a href="/ahinfo/special-special" menu_id="2-1">产品套装</a></li>

						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_3 b_none" menu_name="Join/合作加盟">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/static-1006" menu_id="3-0">加盟优势</a></li>
							<li><a href="/ahinfo/static-1007" menu_id="3-1"">开店支持</a></li>
							<li><a href="/ahinfo/static-1008" menu_id="3-2">伙伴证言</a></li>
							<li><a href="/ahinfo/shoplist-shoplist" menu_id="3-3">网点介绍</a></li>
							<li><a href="/ahinfo/joinus-joinus" menu_id="3-4">加盟咨询</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_4 b_none" menu_name="Comment/顾客口碑">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/post-post" menu_id="4-0">顾客口碑</a></li>

						</ul>
						<div class="c_bottom"></div>
					</div>
				</div>
			</div>
</#macro>



<#macro m_site_common_page_before now_menu="">

			<div class="ahinfo_center">
				<#if (now_menu!="")>
					<input type="hidden" name="ahinfo_page_now_menu_index" id="ahinfo_page_now_menu_index" value="${now_menu}"/>
				</#if>
				<div class="ahinfo_page_box">

					<div class="ahinfo_page_nav"></div>
					<div class="ahinfo_page_left"  id="ahinfo_page_left">
						<div class="c_nav">

							<ul>
								
							</ul>


						</div>
					</div>
					<div class="ahinfo_page_right">


</#macro>

<#macro m_site_common_page_after>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>


</#macro>


<#macro m_site_common_footer>
			<div class="ahinfo_foot">
				<div class="ahinfo_foot_link">

					<div class="ahinfo_foot_line">
						<div class="c_line3"></div>
						<div class="c_line1"></div>
					</div>
					<div class="b_h_30">
						<ul>

							<li><a href="#">法律声明</a></li>
							<li><a href="#">联系我们</a></li>
							<li><a href="#">网站地图</a></li>
							<li><a href="#">诚聘英才</a></li>
							<li><a href="#">微信关注</a></li>
						</ul>

					</div>
				</div>
				<div class="ahinfo_foot_info">
					© copyright 2010-2012 奥华国际. All rights reserved. <br />
					京ICP备10000000号-0
				</div>
			</div>
		</div>

	</div>
	
	
	
	
	
	<script>
		$(document).ready(function() {
			$('.ahinfo_head_item_0').srnprtip({
				target : '.ahinfo_nav_item_0'

			});
			$('.ahinfo_head_item_1').srnprtip({
				target : '.ahinfo_nav_item_1'

			});
			$('.ahinfo_head_item_2').srnprtip({
				target : '.ahinfo_nav_item_2'

			});
			$('.ahinfo_head_item_3').srnprtip({
				target : '.ahinfo_nav_item_3'

			});
			$('.ahinfo_head_item_4').srnprtip({
				target : '.ahinfo_nav_item_4'

			});

		});
	</script>
</body>
</#macro>









<#macro m_site_common_site_nav pageNav>

<div class="ahinfo_pagination_change">


<#if (pageNav.getPageIndex()*pageNav.getPageSize()<pageNav.getPageCount())>
<a href="?z_page_index=${pageNav.getPageIndex()+1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">
	<div class="c_next"></div>
</a>

</#if>


<#if (pageNav.getPageIndex()>1)>

<a href="?z_page_index=${pageNav.getPageIndex()-1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">
	<div class="c_prev"></div>
</a>
</#if>





<div class="clearfix"></div>
</div>
</#macro>

















