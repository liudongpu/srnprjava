


<@m_site_common_header />

<@m_site_common_page_before />
				
					<div class="ahinfo_special">
					
					
					
									
<#list pageexec.upData("ah_special") as el>

						<div class="c_item">
								<div class="c_img">
									<img
										src="${el["file"]}" />
								</div>
								<div class="c_title">${el["name"]}</div>
								
								<div class="c_list">
									
									<table border="0" cellpadding="0" cellspacing="0">
									
									<#list pageexec.upData("ah_good","special_uid",el["uid"]) as ec>
									
									
										
											<tr>
												<td>a</td>
												<td>a</td>
												<td>a</td>
												<td>a</td>
											</tr>
											<tr class="c_switch">
												<td>a</td>
												<td>a</td>
												<td>a</td>
												<td>a</td>
											</tr>
										
									</#list>
									
									</table>
									
								</div>
							</div>




</#list>
					
					
					
							
						</div>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



