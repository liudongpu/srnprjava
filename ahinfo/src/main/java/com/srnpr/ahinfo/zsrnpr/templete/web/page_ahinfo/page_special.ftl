


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
									
									
									
									<#list pageexec.upData("ah_good","special_uid",el["uid"]) as ec>
									
										<div <#if ec_index%2==1> class="c_switch"<#else> class="c_one" </#if> >
									
										
										
												<span class="c_se c_s1">${ec["name"]}</span>
												<span class="c_se c_s2">单价：${ec["one_price"]}</span>
												<span class="c_se c_s3">疗程价：${ec["good_price"]}</span>
												<span class="c_se c_s4">会员价：${ec["try_price"]}</span>
											
											
										</div>
									</#list>
									
									
									
								</div>
							</div>




</#list>
					
					
					
							
						</div>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



