

<#assign page_obj=pageexec.upDataOne("ah_item","uid",pageinfo.getWebSet()["Url_View"])>
<@m_site_common_header />

<@m_site_common_page_before now_menu="2-0"/>
				
				<div class="ahinfo_info">
							<div class="c_title">${page_obj["name"]}</div>
							<div class="c_info">解决问题：${page_obj["note"]}</div>
							
							<div class="c_info">同类项目：
							<#list pageexec.upData("ah_item","service_uid",page_obj["service_uid"]) as ec>
								<a href="/ahinfo/item-${ec["uid"]}">${ec["name"]}</a>
							</#list>
							
							</div>
							<div class="c_line"></div>
							<div clas="c_want">
								<div class="c_try"></div>
								<div class="c_post">+写评论</div>
							</div>
							<div class="clearfix"></div>
							<div class="c_show">${page_obj["content"]}</div>
					</div>
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



