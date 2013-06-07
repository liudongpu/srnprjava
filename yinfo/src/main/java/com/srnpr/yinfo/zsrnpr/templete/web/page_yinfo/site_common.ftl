
<#macro m_site_common_header title="" >


<title>${title}</title> 
<meta name="keywords" content="银杏林" />
<meta name="description" content="${title}-银杏林" />
</head>
<body class="yinfo_body">



	<div class="yinfo_header y_center"></div>
	<div class="yinfo_nav">
		<div class="y_center">
			<div class="yinfo_nav_box">
				<div class="c_tip"></div>
				<div class="c_nav">
					<ul>
						<li class="c_active"><a href="${base_url}">首页</a></li>
						<li><a href="${base_url}yinfo/list-110108_0_0_0">海淀区</a></li>
						<li><a href="${base_url}yinfo/list-110105_0_0_0">朝阳区</a></li>
						<li><a href="${base_url}yinfo/list-110102_0_0_0">西城区</a></li>
						<li><a href="${base_url}yinfo/list-110101_0_0_0">东城区</a></li>
						<li><a href="${base_url}yinfo/list-110114_0_0_0">昌平区</a></li>
						<li><a href="${base_url}yinfo/list-110107_0_0_0">石景山区</a></li>
						<li id="yinfo_nav_box_address_other"><a href="#">其他区县</a></li>
					</ul>
				</div>

				<div class="yinfo_nav_address">
					<ul>
						<li><a href="${base_url}yinfo/list-110112_0_0_0">·通州区</a></li>
						<li><a href="${base_url}yinfo/list-110113_0_0_0">·顺义区</a></li>
						<li><a href="${base_url}yinfo/list-110106_0_0_0">·丰台区</a></li>
						<li><a href="${base_url}yinfo/list-110109_0_0_0">·门头沟区</a></li>
						<li><a href="${base_url}yinfo/list-110111_0_0_0">·房山区</a></li>
						<li><a href="${base_url}yinfo/list-110115_0_0_0">·大兴区</a></li>
						<li><a href="${base_url}yinfo/list-110116_0_0_0">·怀柔区</a></li>
						<li><a href="${base_url}yinfo/list-110117_0_0_0">·平谷区</a></li>
						<li><a href="${base_url}yinfo/list-110228_0_0_0">·密云县</a></li>
						<li><a href="${base_url}yinfo/list-110229_0_0_0">·延庆县</a></li>
					</ul>
				</div>

				<div class="yinfo_nav_query">
					<div class="c_box"></div>
					<div class="c_bg">
						<div class="c_info b_corner">
							<div class="c_margin">
								<dl>
									<dt>
										<i>1/</i>您希望养老院位于：
									</dt>
									<dd>
										<input name="query_dept" type="radio" value=""
											id="query_dept_0" checked="checked" /><label
											for="query_dept_0">不限</label> <input name="query_dept"
											type="radio" value="110108" id="query_dept_110108" /><label
											for="query_dept_110108">海淀</label> <input name="query_dept"
											type="radio" value="110105" id="query_dept_110105" /><label
											for="query_dept_110105">朝阳</label> <input name="query_dept"
											type="radio" value="110102" id="query_dept_110102" /><label
											for="query_dept_110102">西城</label> <br />
										<input name="query_dept" type="radio" value="110101"
											id="query_dept_110101" /><label for="query_dept_110101">东城</label>
										<input name="query_dept" type="radio" value="110114"
											id="query_dept_110114" /><label for="query_dept_110114">昌平</label>
											<input name="query_dept" type="radio" value="110107"
											id="query_dept_110107" /><label for="query_dept_110107">石景山</label>
									</dd>
								</dl>
								<dl>
									<dt>
										<i>2/</i>您希望价格范围是：
									</dt>
									<dd>
										<input name="query_price" id="query_price_0" type="radio"
											value="" /><label for="query_price_0">不限</label> <input
											name="query_price" type="radio" id="query_price_32510001"
											value="32510001" /><label for="query_price_32510001">2000元以下</label>
										<input name="query_price" type="radio" value="32510002"
											id="query_price_32510002" /><label
											for="query_price_32510002">2000-3000</label> <input
											name="query_price" type="radio" value="32510003"
											id="query_price_32510003" /><label
											for="query_price_32510003">3000-4000</label> <input
											name="query_price" type="radio" value="32510004"
											id="query_price_32510004" /><label
											for="query_price_32510004">4000元以上</label>
									</dd>
								</dl>
								<dl>
									<dt>
										<i>3/</i>老人的情况是：
									</dt>
									<dd>
										<input name="query_type" type="radio" id="query_type_32510001"
											value="32510001" /><label for="query_type_32510001">自理老人</label>
										<input name="query_type" type="radio" value="32510002"
											id="query_type_32510002" /><label for="query_type_32510002">半护理老人</label><br />
										<input name="query_type" type="radio" value="32510003"
											id="query_type_32510003" /><label for="query_type_32510003">全护理老人</label>
										<input name="query_type" type="radio" value="32510004"
											id="query_type_32510004" /><label for="query_type_32510004">特护</label>
										<input name="query_type" id="query_type_0" type="radio"
											value="" /><label for="query_type_0">不限</label>

									</dd>
								</dl>
							</div>

						</div>
						<div class="c_bottons">
							<div class="c_btn b_corner">立即查看</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>




</#macro>


<#macro m_site_common_oldhead title="" >
<title>${title}</title> 
<meta name="keywords" content="银杏林" />
<meta name="description" content="${title}-银杏林" />
</head>
<body class="yinfo_body">
	<div class="yold_header y_center"></div>
	<div class="yold_headadv ">
		<div class="y_center">
			<img
				src="http://image.daoxila.com/opx/db6cc95103789500a9b93a3f1ed7d8ed.jpg" />
		</div>

	</div>
	<div class="yold_nav">
		<div class="y_center">
			<div class="yold_nav_box">

				<ul>
					<li><a class="c_active" href="">首页</a></li>
					<li><a href="">养老院简介</a></li>
					<li><a href="">收费标准</a></li>
					<li><a href="">入住须知</a></li>
					<li><a href="">服务指南</a></li>
					<li><a href="">优惠信息</a></li>
					<li><a href="">联系方式</a></li>
					<li><a href="">机构位置</a></li>
				</ul>
			</div>
		</div>
	</div>
</#macro>


<#macro m_site_common_site_nav p_pagination>
<div class="pagination" zen_page_pagination_size="${p_pagination.getPageSize()}"  zen_page_pagination_index="${p_pagination.getPageIndex()}"  zen_page_pagination_count="${p_pagination.getPageCount()}">
  <ul>
  </ul>
</div>
<script>
$(document).ready(function(){zen.yinfo.pagination()});
</script>
</#macro>


<#macro m_site_common_site_list el fromtype>

							<div class="c_img">
								<a href="${base_url}yinfo/home-home-${el["uid"]}" target="_blank"><img src="${el["main_img"]}" /></a>
							</div>
							<div class="yinfo_item_box">
								<h4><a href="${base_url}yinfo/home-home-${el["uid"]}" target="_blank">${el["name"]}</a></h4>
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
									<#if (fromtype=="list")><input type="checkbox"/><label>加入对比</label></#if>
									<a href="${base_url}yinfo/home-home-${el["uid"]}" target="_blank" class="btn btn-success">去看看</a>
								</div>
							</div>

</#macro>

<#macro m_site_common_footer>

	<div class="yinfo_footer">
		<div class="c_border"></div>
		<div class="y_center">
			<div class="c_nav">
				<span>免费注册</span>|<span>免费注册</span>|<span>免费注册</span>|<span>免费注册</span>
			</div>
			<div class="b_h20"></div>
			<div class="c_text">CopyRight 2013</div>
			<div class="b_h40"></div>
		</div>
	</div>

</body>
</html>
</#macro>