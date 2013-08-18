


<@m_site_common_header />

<@m_site_common_page_before />
<#assign page_obj=pageexec.upDataOneOrder("ah_shop","","create_time")>





					<div class="ahinfo_shoplist">

							<div class="c_top">
							
									<div class="ahinfo_shop_model">
											<div class="c_asm_left">
												<div class="c_asm_title">${page_obj["shop_name"]}</div>
												${page_obj["shop_address"]}
												
											</div>
											<div class="c_asm_right">
												<img
													src="${page_obj["file"]}" />
											</div>
										</div>
								<div class="clearfix"></div>
							</div>
							
							
							
								<div class="c_title">更多奥华门店</div>
								<div class="c_list">
									<#list pageexec.upDataTop("ah_shop","","create_time",8) as ec>
									
									<div  <#if ec_index%2==1> class="c_switch"<#else> class="c_one" </#if>  onclick="zen.ahinfo.showshop(this)">${ec["shop_name"]}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ec["shop_address"]}</div>
									<div class="b_none">
										<div class="ahinfo_shop_model">
											<div class="c_asm_left">
												<div class="c_asm_title">${ec["shop_name"]}</div>
												${ec["shop_address"]}
												
											</div>
											<div class="c_asm_right">
												<img
													src="${ec["file"]}" />
											</div>
										</div>
									</div>
									
									
									</#list>

								</div>
							

						</div>
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



