

<@m_html_addjs [base_zero+"zen/zen_page.js"] />
<@m_site_common_header />

<@m_site_common_page_before />











					<form id="page_form" class="form-horizontal"   action="func-v_ah_join-031ca34bb8b24c12bce83455688f865d-func_from_page_did=416120101" method="post">
							<#list pageinfo.getPageData() as e_list>
							
								<@m_page_autorun e_list />
							
							</#list>
							
							
							<div class="control-group">
							    <div class="controls">
							      
							      <a class="btn  btn-success btn-large" onclick="zen.page.submit(this,'func-v_ah_join-031ca34bb8b24c12bce83455688f865d-func_from_page_did=416120101')"><i class="icon-ok icon-white"></i>&nbsp;&nbsp;提交</a>
													 
							    </div>
						  	</div>
							
							
							
							
							
						
						</form>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



