<#assign good_info=pageexec.upDataList("info_good","*,(select name from info_auction where uid=auction_uid) as auction_uid_name,(select time from info_auction where uid=auction_uid) as auction_uid_time,(select name from info_special where uid=special_uid) as special_uid_name","",0,1,"uid",pageinfo.getWebSet()["Url_Option"])[0]>

<@m_site_common_header nav="auction" title=good_info["name"] />




<div class="layout_main website_center">
		<div class="b_sitenav">
				<@m_site_common_breadcrumb ["预展及成交","auction-list",good_info["name"],""] />
			</div>
			<div class="good_body">
				<div class="good_image">
					<img
					src="${pageexec.upSite(good_info["file_url"])}"
					alt="" />
				</div>
				<div class="good_tools"></div>

				<div class="container-fluid">
				
					<div class="row-fluid">
						<div class="span6">
					
							<#assign good_info_last=pageexec.upDataOneOrder("info_good","special_uid=:ospecial_uid and code<:ocode","-code","ocode",good_info["code"],"ospecial_uid",good_info["special_uid"])?default('') >
							<#if good_info_last?is_hash>
							上一拍品&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<a href="good-good-${good_info_last["uid"]}">${good_info_last["name"]}</a>
							</#if>
						</div>
						<div class="span6 good_text_right">
							<#assign good_info_last=pageexec.upDataOneOrder("info_good","special_uid=:ospecial_uid and code>:ocode","code","ocode",good_info["code"],"ospecial_uid",good_info["special_uid"])?default('') >
							<#if good_info_last?is_hash>
							下一拍品&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;<a href="good-good-${good_info_last["uid"]}">${good_info_last["name"]}</a>
							</#if>
						</div>
					</div>
				
					<div class="row-fluid">
						<div class="span7">
							<div class="good_inner">
								<h4>${good_info["name"]}</h4>
								图录号：${good_info["code"]}
								<br />
								款识：${good_info["texture"]}
								<br />
								尺寸：${good_info["size"]}
								<br />
								参考价：${good_info["assess_price"]}
								<br />
								成交价：${good_info["success_price"]}
							</div>
						</div>
						<div class="span5">
							<div class="good_inner">
								<h4>拍卖会：<a href="special-list-${good_info["auction_uid"]}">${good_info["auction_uid_name"]}</a></h4>
								专场：<a href="pic-list-${good_info["special_uid"]}">${good_info["special_uid_name"]}</a>
								<br />
								时间：${good_info["auction_uid_time"]}
							</div>
							<div class="good_link">
								相关信息：<a href="static-static-303300010002">竞买流程</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="static-static-303300010003">竞买须知</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
								href="static-static-303300010004">委托须知</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="static-static-303300010005">拍卖规则</a>
							</div>
						</div>

					</div>
					<div class="clearfix"></div>
				

					<div class="good_box">
						<div class="c_title">拍品介绍</div>
						<div class="c_info">${good_info["note"]?default('暂无')}</div>
					</div>
					<div class="clearfix"></div>
					
					
						<div>
						<@m_site_common_comment_text text="" uid=good_info["uid"] title=good_info["name"] url="good-good-"+good_info["uid"] />
						</div>
						
						
					<div class="clearfix"></div>
					
					<div class="h_40"></div>
				</div>

			</div>

<@m_site_common_qrcode />

</div>
	
	
	
	
	
	
	
	
	
	
	

<@m_site_common_footer />
</body>