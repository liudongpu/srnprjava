

<body class="website_body">
<@m_site_common_header nav="info" />
<#include "site_info.ftl"  />

<#assign note_info=pageexec.upDataOne("info_news","uid",pageinfo.getWebSet()["Url_Option"])>


<div class="layout_main website_center">
		<div class="b_sitenav"></div>
		<div class="content_body  container-fluid">
			<div class="row-fluid">
				<div class=" span9">

					<div class="content_box">
						<div class="h_20"></div>
						<div class="content_title">${note_info["title"]}</div>
						<div class="content_desc">发表时间:${note_info["create_time"]}|文章出处:博观拍卖</div>
						<div>${note_info["content"]}</div>
					</div>
				</div>
				<div class=" span3">

					<@m_site_info_lastinfo />
					<@m_site_info_lastnotice />
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="h_40"></div>
		</div>


	</div>
	
	
	
	
	
	
	
	
	
	
	

<@m_site_common_footer />
</body>