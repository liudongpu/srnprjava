
<@m_site_common_header nav="club" />
<#include "site_info.ftl"  />

<div class="layout_main website_center">
<div class="b_sitenav"><@m_site_common_breadcrumb ["俱乐部通知",""] /></div>
		
		<div class="info_body  container-fluid">
			<div class="row-fluid">
				<div class="info_body_left span9">
				 	<#assign  pageNav=pageexec.upPageNav("info_notify","","-time")  >
		
						<#list pageNav.getPageData() as el> 	
							<div class="info_item">
								<div class="c_title">
									<h3><a href="inform-inform-${el["uid"]}">${el["title"]}</a></h3>
								</div>
								<div class="c_time">发表时间：${el["create_time"]} | 文章出处：博观拍卖</div>
								<#if (el["file_url"]??)&&(el["file_url"]!="")>
								<div class="c_image">
									<img
										src="${el["file_url"]}" />
								</div>
								</#if>
								<div class="c_des">内容：
									${el["content"]}</div>
								<div class="c_tips">
									<span class="b_icon c_share"></span><@m_site_common_share_text title=el["title"] url="inform-inform-"+el["uid"] /><span
										class="b_icon c_comment"></span>&nbsp;&nbsp;&nbsp;&nbsp;<@m_site_common_comment_text uid=el["uid"] title=el["title"] url="inform-inform-"+el["uid"] />
								</div>
								<div class="c_split"></div>
							</div>
									 
							</#list>
						<div class="index_pagenav">
						<@m_site_common_site_nav pageNav />
						</div>
				</div>
				<div class=" span3">

					<@m_site_info_lastinfo />
					<@m_site_info_lastnotice />
				</div>
			</div>
		</div>
	</div>
<@m_site_common_share_script />
<@m_site_common_footer />
</body>