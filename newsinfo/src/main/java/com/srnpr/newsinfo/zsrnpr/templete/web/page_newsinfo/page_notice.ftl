
<@m_site_common_header nav="notice" />
<#include "site_info.ftl"  />

<div class="layout_main website_center">

		<div class="layout_height8"></div>
		<div class="info_body  container-fluid">
			<div class="row-fluid">
				<div class="info_body_left span9">
				 <@m_site_info_listnotice />
				</div>
				<div class=" span3">

					<@m_site_info_lastinfo />
					<@m_site_info_lastnotice />
				</div>
			</div>
		</div>
		<@m_site_common_qrcode />
	</div>
<@m_site_common_share_script />
<@m_site_common_footer />
</body>