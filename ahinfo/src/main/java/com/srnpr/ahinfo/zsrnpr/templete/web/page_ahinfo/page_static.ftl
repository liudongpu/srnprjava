

<#assign page_obj=pageexec.upDataOne("y_static","code",pageinfo.getWebSet()["Url_View"])>

<@m_site_common_header />

<@m_site_common_page_before />
				
				
				${page_obj["content"]}
		
					
<@m_site_common_page_after />
<@m_site_common_footer />



