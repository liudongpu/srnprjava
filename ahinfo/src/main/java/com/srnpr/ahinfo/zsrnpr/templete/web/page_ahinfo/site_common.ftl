
<#macro m_site_common_header nav="" title="" >

<title>奥华</title>

</head>
<body class="ahinfo_body">

	<div class="ahinfo_pageback">

		<div class="ahinfo_width ahinfo_main b_static">
			<div class="ahinfo_top">
				<div class="ahinfo_head">
					<div class="c_top"></div>
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
					<div class="c_item ahinfo_nav_item_0 b_none">
						<div class="c_split"></div>
						<ul>
							<li><a href="/ahinfo/static-1001">公司概况</a></li>
							<li><a href="/ahinfo/static-1002">品牌理念</a></li>
							<li><a href="/ahinfo/static-1003">品牌广告</a></li>
							<li><a href="/ahinfo/people-0">管理团队</a></li>
							<li><a href="/ahinfo/static-1004">奥华历程</a></li>
							<li><a href="/ahinfo/static-1005">企业投资者</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_1 b_none">
						<div class="c_split"></div>
						<ul>
							<li><a href="#">新品速递</a></li>
							<li><a href="#">最新护理</a></li>
							<li><a href="#">热卖臻品</a></li>
							<li><a href="#">本月特惠</a></li>
							<li><a href="#">新店开业</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_2 b_none">
						<div class="c_split"></div>
						<ul>
							<li><a href="#">服务项目</a></li>
							<li><a href="#">产品套装</a></li>

						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_3 b_none">
						<div class="c_split"></div>
						<ul>
							<li><a href="ahinfo/static-1006">加盟优势</a></li>
							<li><a href="ahinfo/static-1007">开店支持</a></li>
							<li><a href="ahinfo/static-1008">伙伴证言</a></li>
							<li><a href="ahinfo/static-1009">网点介绍</a></li>
							<li><a href="ahinfo/joinus-new">加盟咨询</a></li>
						</ul>
						<div class="c_bottom"></div>
					</div>
					<div class="c_item ahinfo_nav_item_4 b_none">
						<div class="c_split"></div>
						<ul>
							<li><a href="#">顾客口碑</a></li>

						</ul>
						<div class="c_bottom"></div>
					</div>
				</div>
			</div>
</#macro>



<#macro m_site_common_page_before>

			<div class="ahinfo_center">

				<div class="ahinfo_page_box">

					<div class="ahinfo_page_nav">首页 &gt; 最新动态 &gt; 新品速递</div>
					<div class="ahinfo_page_left">
						<div class="c_nav">

							<ul>
								<li class="c_top">About/关于奥华</li>
								<li><a href="/ahinfo/static-1001">&gt;公司概况</a></li>
								<li><a href="#">品牌理念</a></li>
								<li><a href="#">品牌广告</a></li>
								<li><a href="#">管理团队</a></li>
								<li><a href="#">奥华历程</a></li>
								<li><a href="#">企业投资者</a></li>
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

<#if (pageNav.getPageIndex()>1)>
<a href="?z_page_index=1&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">首页</a>
<a href="?z_page_index=${pageNav.getPageIndex()-1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">上一页</a>
</#if>

<span>第${pageNav.getPageIndex()}页</span>

<#if (pageNav.getPageIndex()*pageNav.getPageSize()<pageNav.getPageCount())>
<a href="?z_page_index=${pageNav.getPageIndex()+1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">下一页</a>
<a href="?z_page_index=${(pageNav.getPageCount()/pageNav.getPageSize())?ceiling}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">尾页</a>
</#if>

</#macro>

















