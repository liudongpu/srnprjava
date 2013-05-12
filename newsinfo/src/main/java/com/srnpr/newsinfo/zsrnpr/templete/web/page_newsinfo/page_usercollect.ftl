<body class="website_body">
<@m_site_common_header nav="" />

<#include "site_user.ftl" />

<#if (pageinfo.getPageOptions()?exists) >




	<div class="layout_main website_center">
		<div class="user_body">
			<div class="user_header"><@m_site_user_header nav="collect" /></div>
			<div class="user_main">

				<div class="layout_height8"></div>

		
				<#assign  pageSearchNav=pageexec.upPageNav("user_collect","","-collect_date","user_uid",pageinfo.getPageOptions()["uid"])  >
				<div class="user_table">
					<table class="table table-bordered  table-hover">
						<thead>
							<tr>
								<th >标题</th>
								
								<th style="width:30%;">收藏时间</th>
								<th style="width:10%;">查看</th>
							</tr>
						</thead>
						<tbody>
						
						
						<#list pageSearchNav.getPageData() as el> 
							<tr>
								<td>${el["info_title"]}</td>
								<td>${el["collect_date"]}</td>
								<td><a href="${el["info_url"]}">查看</a></td>
							</tr>
						</#list>
						</tbody>
					</table>
				</div>
			
				<div class="index_pagenav">
					<@m_site_common_site_nav pageSearchNav />
				</div>
			
				<div class="h_40"></div>
			</div>
		</div>



	</div>
	
<#else>
	<@m_site_user_nologin />
</#if>
<@m_site_common_footer />
</body>