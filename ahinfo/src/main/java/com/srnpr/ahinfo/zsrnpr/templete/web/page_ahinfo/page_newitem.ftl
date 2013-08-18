


<@m_site_common_header />

<@m_site_common_page_before />

<#assign  pageSearchNav=pageexec.upPageNav("ah_item","","-zid")  >


				
					<div class="ahinfo_newnew">
					
						<#list pageSearchNav.getPageData() as el> 
						
							<div class="c_item">
							
								<div class="c_title"><a href="item-${el["uid"]}">${el["name"]}</a></div>
								<div class="c_info">${el["note"]}</div>
							
							</div>
						
							
						
						
						</#list>
						<div class="index_pagenav">
							<@m_site_common_site_nav pageSearchNav />
						</div>
						
					
							
					</div>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



