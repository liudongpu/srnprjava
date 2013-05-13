<body class="website_body">
<@m_site_common_header nav="book" />


<div class="layout_main website_center">


		<div class="book_body">

			<div class="book-adv">

				<div class="book_adv_top">
				<#assign page_book_adv_top= pageexec.upDataOne("info_static","code","303300030001") >
					<a href="${page_book_adv_top["link"]}" target="_blank"><img src="${page_book_adv_top["file_url"]}" /></a>
				</div>
				<div class="book_center">
					<div class="c_left">
					<#assign page_book_adv_left= pageexec.upDataOne("info_static","code","303300030002") >
					<a href="${page_book_adv_left["link"]}" target="_blank"><img src="${page_book_adv_left["file_url"]}" /></a>
					</div>
					<div class="c_right">
					<#assign page_book_adv_right= pageexec.upDataOne("info_static","code","303300030003") >
					<a href="${page_book_adv_right["link"]}" target="_blank"><img src="${page_book_adv_right["file_url"]}" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div>
				<div class="book_pic">
					<div class="index_piclist" id="zen_picnav_books">
						<div class="index_piclist_position">
							<div class="index_piclist_box zen_picnav_list">
								<ul>
								
								
								<#list pageexec.upDataOrder("info_book","-sort_index") as el> 	
						 			<li>
						 				<a href="${base_url}books/${el["book_url"]}" target="_blank"> 
						 					<img src="${el["file_url"]}" alt="${el["title"]}" />
						 					<span>${el["title"]}</span>
										</a>
									</li>
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
						$(window).load(function() {
							zen.site.picnav('zen_picnav_books', 'i');
						});
					</script>
				</div>
			</div>

		</div>


	</div>





<@m_site_common_footer />
</body>