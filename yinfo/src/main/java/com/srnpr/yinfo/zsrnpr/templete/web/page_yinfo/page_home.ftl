
<#assign page_obj=pageexec.upDataOne("y_info","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_site_common_oldhead />

	<div class="y_center">
		<div class="yinfo_main">
			<div class="b_h15"></div>
			<div class="yold_info">
				<div class="yold_info_bg">
					<div class="yold_info_box">
						<div class="yold_info_left">
							<div class="c_pic">
								<img
									src="http://image.daoxila.com/hotel/medium/2013-01/20130108135925.jpg" />
							</div>
							<div class="b_h10"></div>
							<div class="c_imgs"></div>
						</div>
						<div class="yold_info_right">
							<div class="c_top">
								<div class="c_left">
									<h2>${page_obj["name"]}</h2>
								</div>
								<div class="c_right">
									<div class="c_icontip"></div>
								</div>
							</div>
							<div class="c_item">
								<span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区：</span>北京
								海淀


							</div>
							<div class="c_item">
								<span>床&nbsp;&nbsp;位&nbsp;&nbsp;数：</span>${page_obj["q_bednumber"]}
							</div>
							<div class="c_item">
								<span>收住对象：</span>
							</div>
							<div class="b_h20"></div>
							<div></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="b_h10"></div>
			<div class="yold_show">

				<div class="c_item">
					<div class="c_title">养老院简介</div>
					<div>${page_obj["field_description"]}</div>
				</div>
				<div class="c_item">
					<div class="c_title">收费标准</div>
					<div>信息</div>
				</div>
				<div class="c_item">
					<div class="c_title">入住须知</div>
					<div>${page_obj["field_live"]}</div>
				</div>
				<div class="c_item">
					<div class="c_title">服务指南</div>
					<div>${page_obj["field_service"]}</div>
				</div>
				<div class="c_item">
					<div class="c_title">优惠信息</div>
					<div>${page_obj["field_coupon"]}</div>
				</div>
				<div class="c_item">
					<div class="c_title">联系方式</div>
					<div>${page_obj["field_description"]}</div>
				</div>
				<div class="c_item">
					<div class="c_title">机构位置</div>
					<div>${page_obj["link_address"]}</div>
				</div>
			</div>
		</div>
	</div>



<@m_site_common_footer />