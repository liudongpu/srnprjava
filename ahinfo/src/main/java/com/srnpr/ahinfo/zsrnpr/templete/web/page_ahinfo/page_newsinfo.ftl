


<@m_site_common_header />

<@m_site_common_page_before  now_menu="1-0"/>

<#assign page_obj=pageexec.upDataOne("ah_new","uid",pageinfo.getWebSet()["Url_View"])>


				
				<div class="ahinfo_newinfo">
							<div class="c_title">${page_obj["title"]}</div>
							<div><a href="javascript:history.go(-1)"><div class="c_back"></div></a></div>
							<div class="c_info">${page_obj["content"]}</div>
						</div>

			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



