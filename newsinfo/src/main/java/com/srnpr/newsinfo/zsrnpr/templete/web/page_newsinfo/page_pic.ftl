<body class="website_body">
<@m_site_common_header nav="auction" />


<#assign
	special_info=pageexec.upDataOne("info_special","uid",pageinfo.getWebSet()["Url_Option"])>



	<div class="layout_main website_center">
		<div class="b_sitenav"><@m_site_common_breadcrumb ["预展及成交","auction-list",special_info["name"],""] /></div>
		
		<script>
			$(function() {

				var $container = $('#container');

				$container.imagesLoaded(function() {
					$container.masonry({
						itemSelector : '.c_item'
					});
				});

			});
		</script>



		<div class="pic_listbox">

			<div id="container" class="pic_listbox">
			
			<#list pageexec.upData("info_good","special_uid",pageinfo.getWebSet()["Url_Option"]) as el>
								
			
				<div class="c_item b_corner">
					<img class="b_corner"
						src="${el["file_url"]}" />
					<div class="c_text">
						<h3>${el["name"]}</h3>
						图录号：${el["code"]}<br /> 参考价：${el["assess_price"]}<br /> 
					</div>
				</div>
				
			</#list>
			</div>




			<div class="clearfix"></div>
		</div>


	</div>










<@m_site_common_footer />
</body>