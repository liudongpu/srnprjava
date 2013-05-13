<body class="website_body">
<@m_site_common_header nav="club" />





<div class="layout_main website_center">
		<div class="b_sitenav"><@m_site_common_breadcrumb ["博观俱乐部",""] /></div>
		<div class="club_body">

			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span9">

						<div class="c_left">
							<div class="c_box">
								<div class="span6">
									<div class="c_title">简介</div>
									<div class="c_info">
										<div>
										${pageexec.upHtmlTag( pageexec.upDataOne("info_static","code","303300020001")["content"]?default(''),200)}
										</div>
										<a href="static-static-303300020001">查看全文</a>
									</div>
									
									<div class="c_linkbox">
									<a href="static-static-303300020001">俱乐部简介</a>
									<a href="static-static-303300020003">俱乐部章程</a>
									</div>
								</div>

								<div class="span6">
									<div class="c_title">通知</div>
									<div class="c_info">
									<div>
										${pageexec.upHtmlTag( pageexec.upDataOne("info_static","code","303300020002")["content"]?default(''),200)}
									</div>
									<a href="static-static-303300020002">查看全文</a>	
									</div>
									
										
									<div class="c_linkbox">
									<a href="notice-list">查看全部公告</a>
									</div>
								</div>


								<div class="clearfix"></div>



							</div>
							<div class="h_20"></div>
							<div>

								<h3>精彩课程</h3>
							</div>
							<div>

								<div class="index_piclist" id="zen_picnav_club">
									<div class="index_piclist_position">
										<div class="index_piclist_box zen_picnav_list">
											<ul>
											
											<#list pageexec.upDataOrder("info_video","-sort_index") as el> 
											
												<li><a href="<#if (el["type_cid"]==30340001)>${el["ppt_url"]} <#else>${el["video_url"]} </#if> " target="_blank"> <img
														src="${el["file_url"]}"
														alt=""> <span>${el["title"]}</span>
												</a></li>
											
											</#list>
											
											</ul>
										</div>
									</div>
									<div class="index_piclist_nav zen_picnav_nav">
										<ul>
										</ul>
									</div>


								</div>
								
								
								
								<script type="text/javascript">
									$(window)
											.load(
													function() {
														zen.site
																.picnav(
																		'zen_picnav_club',
																		'i');
													});
								</script>
								
								
								
								
								
								
								
								
							</div>


						</div>


					</div>
					<div class="span3 c_right">
						<div class="c_flash">
							<embed
								src="http://player.youku.com/player.php/sid/XMzU5Njg1NTU2/v.swf"
								allowFullScreen="true" quality="high" width="240" height="200"
								align="middle" allowScriptAccess="always"
								type="application/x-shockwave-flash"></embed>
						</div>
						<div class="h_20"></div>
						<div class="c_allnote">更多免费视频</div>
						<ul>
							<#list pageexec.upDataList("info_video","","-sort_index",0,10,"type_cid","30340002") as el>
							<li><a href="${el["video_url"]}" target="_blank">${el["title"]}</a></li>
							</#list>
							
						</ul>
						<div class="c_more">
							<!--<a href="">查看全部</a>-->
						</div>

					</div>

					<div class="clearfix"></div>
				</div>
				<div class="h_40"></div>

			</div>


		</div>

<@m_site_common_piclist />

	</div>


<@m_site_common_footer />
</body>
