
<@m_mb_common_header nav="main"  button="back"/>


<#if (pageinfo.getPageOptions()?exists) >



	<div class="mobile_lay_main">
		<div class="mobile_mbid_body mobile_w_none" id="mobile_mbid_body">

			<div class="mobile_mbid_box">

				<div class="mobile_mbid_for_bgone"></div>
				<div class="mobile_mbid_for_agree">
					<input type="checkbox" checked="checked" />我同意<a href="/newsinfo/mstatic-static-303300040003">竞投办理协议</a>

				</div>
				<div class="mobile_w_h30 "></div>
				<div class="mobile_base_buttom" onclick="zen.mobile.userbidagree_click()">确定</div>
				<div class="mobile_w_h30 "></div>
				<div class="mobile_w_h30 "></div>
			</div>
		</div>
		
		
		<div  class="mobile_mbid_notice mobile_w_none" id="mobile_mbid_notice">
				<div class="mobile_w_h30 "></div>
				<div class="mobile_mbid_notice_message">

					<div class="mobile_mbid_notice_title">提示信息</div>
					 您已维护过相关内容，如果想修改请联系客服。
				</div>
		
		</div>
		
	</div>
	
	<script type="text/javascript">
		$(function() {
			zen.mobile.page_muserbidagree()
		});
	</script>
	
	
	<#else>
	<@m_mb_common__nologin />
</#if>
	
	
	
<@m_mb_common_footer />
</body>