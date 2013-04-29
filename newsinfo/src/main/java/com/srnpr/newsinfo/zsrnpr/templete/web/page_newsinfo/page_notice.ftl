<body class="website_body">
<@m_site_common_header nav="notice" />
<#include "site_info.ftl"  />

<div class="layout_main website_center">

		<div class="layout_height8"></div>
		<div class="info_body  container-fluid">
			<div class="row-fluid">
				<div class="info_body_left span9">
				 <@m_site_info_listinfo />
				</div>
				<div class=" span3">

					<@m_site_info_lastinfo />
					<@m_site_info_lastnotice />
				</div>
			</div>
		</div>
	</div>

<@m_site_common_footer />
</body>