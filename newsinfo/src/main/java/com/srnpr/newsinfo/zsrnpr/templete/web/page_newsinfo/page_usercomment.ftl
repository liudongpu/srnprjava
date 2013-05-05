<body class="website_body">
<@m_site_common_header nav="" />

<#include "site_user.ftl" />

<#if (pageinfo.getPageOptions()?exists) >




	<div class="layout_main website_center">
		<div class="user_body">
			<div class="user_header"><@m_site_user_header nav="comment" /></div>
			<div class="user_main">

				

			</div>
		</div>



	</div>
	
<#else>
	<@m_site_user_nologin />
</#if>
<@m_site_common_footer />
</body>