<#assign note_info=pageexec.upDataOne("info_special","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header type="1"  button="back" title=note_info["name"]/>





	<div class="mobile_lay_main">
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
			zen.mobile.page_mpic("${pageinfo.getWebSet()["Url_Option"]}")
		});
	</script>

<@m_mb_common_footer />
</div></div>

</body>