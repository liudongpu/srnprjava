


<@m_site_common_header />

<@m_site_common_page_before />


					<div class="ahinfo_shoplist">
							<div class="c_img"></div>
							
							
							<#list pageexec.upData("you_class","parent_code","3269") as el>
								<div class="c_title">${el["name"]}地区门店</div>
								<div class="c_list">
									<#list pageexec.upData("ah_shop","shop_area",el["code"]) as ec>
									
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
							</#list>

						</div>
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



