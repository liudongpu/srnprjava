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
									<div>
										
										${pageexec.upHtmlTag( pageexec.upDataOne("info_static","code","303300020001")["content"]?default(''),200)}
										<br/>
										<a href="static-static-303300020001">查看全文</a>
									</div>
									<div class="c_linkbox">
									<a href="static-static-303300020001">俱乐部简介</a>
									<a href="static-static-303300020003">俱乐部章程</a>
									</div>
								</div>

								<div class="span6">
									<div class="c_title">通知</div>
									<div>
										${pageexec.upHtmlTag( pageexec.upDataOne("info_static","code","303300020002")["content"]?default(''),200)}
										<br/>
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
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f829898.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f8af7f6.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f93f3a8.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47a28086.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47b671a6.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47c7a89f.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47d2691b.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47dafadf.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47e4ca51.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
												<li><a href=""> <img
														src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c482d4f0a.jpg"
														alt=""> <span>我滚动，我快乐，我无趣，我来也</span>
												</a></li>
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

							<li><a href="">11111111111111</a></li>
						</ul>
						<div class="c_more">
							<a href="">查看全部</a>
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
