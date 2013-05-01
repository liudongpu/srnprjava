<body class="website_body">
<@m_site_common_header nav="people" />


	<div class="layout_main website_center">
		<div class="people_body">
			<div class="people_type">
				<div class="c_item c_one"></div>
				<div class="c_item c_two"></div>
				<div class="c_item c_three"></div>
				<div class="c_item c_four"></div>
			
			</div>
			
			<div class="people_list">
			
				<#list pageexec.upData("info_people")	as el>
				<a class="c_item b_corner" href="product-view-${el["uid"]}">
				<img class="b_corner" src="${el["file_url"]}"/>
				<h4>${el["name"]}</h4>
				</a>
				
				</#list>
				
				<div class="clearfix"></div>
				
			</div>
			
		
		</div>

		
	</div>

<@m_site_common_footer />
</body>