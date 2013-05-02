<body class="website_body">
	<@m_site_common_header nav="auction" /> <#assign
	special_info=pageexec.upDataOne("info_auction","uid",pageinfo.getWebSet()["Url_Option"])>

	<div class="layout_main website_center">
		<div class="b_sitenav"></div>
		<div class="special_body">
			<div class="layout_height8"></div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span3">
						<div class="special_box_auction">
							<div class="c_img">
								<img src="${special_info['file_url']}" />
							</div>
							<div class="c_info">
								<div class="c_title">${special_info['name']}</div>

								<div class="c_time">
									时间：<span>${special_info["time"]?date("yyyy-MM-dd")}</span>
								</div>
								<div class="c_time">
									成交总金额：<span>${special_info["success_price"]?default('')}</span>
								</div>

							</div>

						</div>

					</div>

					<div class="span9">
						<div class="special_box_list">

							<div class="special_list">

								<#list
								pageexec.upData("info_special","auction_uid",pageinfo.getWebSet()["Url_Option"])
								as el>


								<dl>
									<dt>
										<img src="${el["file_url"]}"/>
									</dt>
									<dd>
										<h3>${el["name"]}</h3>
										时间：${el["time"]?date("yyyy-MM-dd")} <br />
										成交总金额：${el["success_price"]}
										<div>
											<span class="b_icon c_share"></span>&nbsp;&nbsp;分享&nbsp;&nbsp;&nbsp;&nbsp;
											<span class="b_icon c_comment"></span>&nbsp;&nbsp;评论&nbsp;&nbsp;&nbsp;&nbsp;
											<span class="b_icon c_collect"></span>&nbsp;&nbsp;收藏&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<a href="pic-list-${el["uid"]}">查看详细&nbsp;&nbsp;></a>
										</div>
									</dd>
								</dl>
								<div class="h_40"></div>
								<div class="b_split" yle></div>
								
	


								</#list>









							</div>

						</div>

					</div>

				</div>

			</div>
			
			<div class="h_40"></div>
			
		</div>

	</div>

	<@m_site_common_footer />
</body>