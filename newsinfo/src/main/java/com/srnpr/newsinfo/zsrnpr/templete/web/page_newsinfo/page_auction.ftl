<body class="website_body">
<@m_site_common_header nav="auction" />
<@m_html_addjs [base_zero+"lib/jquery/jquery.masonry.min.js"] />



<div class="layout_main website_center">

		<div class="layout_height8"></div>


		<script type="text/javascript">
			$(function() {
				// masonry plugin call
				$('#container').masonry({
					itemSelector : '.c_item'
				});
				//injecting arrow points
				function Arrow_Points() {

					var iIndex = 0;
					var s = $("#container").find(".c_item");

					var iTempYear = 0;
					var iTempMonth = -1;

					var aMonthName = [ '一月', '二月', '三月', '四月', '五月', '六月',
							'七月', '八月', '九月', '十月', '十一月', '十二月' ];

					$
							.each(
									s,
									function(i, obj) {

										var posLeft = $(obj).css("left");

										var sCss = "c_left";
										var sCssLine = ($(obj).find(
												".c_flagprep").size() > 0) ? 'c_prep'
												: 'c_success';

										if (posLeft == "0px") {

										} else {
											$(obj).css("left",
													parseInt(posLeft) + 100);
											sCss = "c_right";
										}
										var posTop = parseInt($(obj).css("top"));

										if (iIndex > 0) {

											var sTime = $(obj).find(
													".c_time span").text();

											var iNowYear = parseInt(sTime
													.split('-')[0]);
											var iNowMonth = parseInt(sTime
													.split('-')[1]);
											var iNowDay = parseInt(sTime
													.split('-')[2]);

											if (iIndex > 1
													&& iNowYear != iTempYear) {
												if (sCss == "c_left") {
													posTop = posTop + 140;
												}
												$("#container")
														.append(
																'<div class="c_box" style="top:'
																		+ (posTop + 20)
																		+ 'px"><div class="c_year" id="y'+iTempYear+'">'
																		+ iTempYear
																		+ '</div></div>');
												posTop = posTop + 80;

											} else if (iNowMonth != iTempMonth) {
												if (sCss == "c_left") {
													posTop = posTop + 80;
												}
												$("#container")
														.append(
																'<div class="c_box" style="top:'
																		+ (posTop + 50)
																		+ 'px"><div class="c_month">'
																		+ aMonthName[iNowMonth - 1]
																		+ '</div></div>');
												posTop = posTop + 10;
											}

											iTempYear = iNowYear;
											iTempMonth = iNowMonth;

											$("#container")
													.append(
															'<div class="c_box '
																	+ sCss
																	+ '" style="top:'
																	+ ((posTop + 100) + "px")
																	+ '"><div class="c_line"><span>'
																	+ iNowMonth
																	+ '月'
																	+ iNowDay
																	+ '日</span></div><div class="'+sCssLine+'"></div></div>');
										} else {

											$("#container")
													.append(
															'<div class="c_box '+sCss+'" style="top:0px"><div class="c_target"></div></div>');

										}

										iIndex++;

									});
					$("#container").append(
							'<div class="c_box" style="top:'
									+ ($("#container").height() - 120)
									+ 'px"><div class="c_year">' + iTempYear
									+ '</div></div>');
				}
				Arrow_Points();
			});
		</script>


		<div class="prep_timebox">
			<div id="container" class="prep_timeline">

				<!-- E TimeLine导航 -->
				<div class="timeline_container">
					<div class="timeline">
						<div class="plus"></div>
					</div>
				</div>
				<!-- E TimeLine导航 -->
				<div class="c_item">
					<div class="c_height"></div>
				</div>


				<#list pageexec.upData("info_auction") as el> 	 
					<div class="c_item">
					<div class="c_inner">
						<div class="c_image">
							<img
								src="${el["file_url"]}" />
						</div>
						<div class="c_info">
							<div class="c_title">拍卖会：${el["name"]}</div>
							<div>专场：共${el["special_num"]}个专场</div>
							<div class="c_time">
								时间：<span>${el["time"]?date("yyyy-MM-dd")}</span>
							</div>
							<div class="c_href">
							<#if el["auction_type_cid"]==30310001><span class="c_flagprep"></span></#if>
								<a href="#">查看详情 ></a>
							</div>
						</div>

					</div>
				</div>
							 
					</#list>



				
			</div>


			<div class="layout_height8" style="height: 100px;"></div>
		</div>
	</div>

<@m_site_common_footer />
</body>