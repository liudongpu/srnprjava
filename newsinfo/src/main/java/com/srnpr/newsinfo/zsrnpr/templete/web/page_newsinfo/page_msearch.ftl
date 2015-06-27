
<@m_mb_common_header type="1"  button="search" title="搜索结果"/>
	<#assign search_text="" />
<#if pageinfo.getWebSet()["Url_Option"]?? >
	<#assign search_text=pageinfo.getWebSet()["Url_Option"] />
</#if>


<div class="mobile_lay_head">

	<div class="mobile_lay_head">
				<div class="mobile_head_left">

					<a href="mindex-index"><div
							class="mobile_head_icon_back"></div></a>
				</div>


				<div  class="mobile_head_search">

					<div class="mobile_msearch_bg">
						<div class="mobile_msearch_btn" onclick="zen.mobile.btn_msearch()"></div>
						<div class="mobile_msearch_input">
							<input id="msearch_input" type="text" value="${search_text}" />
						</div>


					</div>




				</div>
				<div style="clear: both;"></div>

			</div>
</div>


	<div class="mobile_lay_main">
	
				<div class="mobile_msearch_empty" id="mobile_msearch_empty">
					<div class="mobile_msearch_empty_img"></div>
				</div>
	
	
	
				<div class="mobile_mpic_body " id="mobile_mpic_body">
					<div id="mobile_mpic_scroll" class="">

						<div id="mobile_mpic_list">
							
						</div>
						<div class="mobile_base_more" id="mobile_base_more">
							<div class="mobile_base_more_box">
								<div class="mobile_base_more_left"></div>
								<div class="mobile_base_more_right">下拉加载更多</div>
							</div>
						</div>
						<div style="clear: both;"></div>
						<div class="mobile_w_h20"></div>
					</div>
				</div>
			</div>
			
			<script type="text/javascript">
		$(function() {
			zen.mobile.page_mpic("${search_text}")
		});
	</script>

<@m_mb_common_footer />
</div></div>

</body>