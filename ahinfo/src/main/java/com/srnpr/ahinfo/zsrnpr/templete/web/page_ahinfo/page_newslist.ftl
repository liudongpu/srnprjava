


<@m_site_common_header />

<@m_site_common_page_before />

<#assign  pageSearchNav=pageexec.upPageNav("ah_new","","-create_time")  >


				
					<div class="ahinfo_newlist">
					
						<#list pageSearchNav.getPageData() as el> 
						
						
							<div class="c_item  <#if (el_index%2==0)> c_lbox<#else>c_rbox</#if>">
								<div class="c_img">
									<img
										src="${el["file_url"]}">
								</div>
								<div class="c_info">
									<div class="c_title">${el["title"]}</div>
									<div class="c_content">${el["content"]}</div>
									<div class="c_price">价格：${el["price"]}</div>
									<a href=""><div class="c_button"></div></a>

								</div>
								<div class="clearfix"></div>
							</div>
						
						
						</#list>
						<div class="index_pagenav">
							<@m_site_common_site_nav pageSearchNav />
						</div>
						
					
							
					</div>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



