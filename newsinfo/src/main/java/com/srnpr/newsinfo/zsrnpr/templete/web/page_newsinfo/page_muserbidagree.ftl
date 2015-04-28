
<@m_mb_common_header nav="main"  button="back"/>


<#if (pageinfo.getPageOptions()?exists) >

	
	
	
	
	

	<div class="mobile_lay_main">
		<div class="mobile_mbid_body " id="mobile_mbid_body">

		<#if (pageexec.upDataCount("user_bid","user_uid",pageinfo.getPageOptions()["uid"])>0) >

			<#assign bid_info=pageexec.upDataOne("user_bid","user_uid",pageinfo.getPageOptions()["uid"])>

			<div class="mobile_mbid_show">
				<div class="mobile_mbid_show_title">竞投资料</div>
			</div>
			<div class="mobile_w_h20"></div>
			<div class="mobile_mbid_show">
				姓名：${bid_info["user_name"]}
				<br /> 手机：${bid_info["user_phone"]}
				<br /> 地址：${bid_info["user_address"]}
			</div>
			<div class="mobile_w_h20"></div>
			<div class="mobile_mbid_show">
				银行账号：${bid_info["bank_no"]}
				<br /> 户主姓名：${bid_info["bank_home"]}
				<br /> 开户银行：${bid_info["bank_name"]}
			</div>

			<div class="mobile_w_h20"></div>
			<div class="mobile_mbid_show">
				身份证正面： <br /> 
				<img src="${bd_img_cdn_url}${pageexec.upMobile(bid_info["card_one"])}" alt=""/>
				 <br /> 
				
				 <br />  身份证反面： <br /> 
				 <img src="${bd_img_cdn_url}${pageexec.upMobile(bid_info["card_two"])}" alt=""/>
				<br /> 
			</div>

			<div class="mobile_w_h20"></div>
			<div class="mobile_base_buttom" onclick="zen.mobile.userbidupdate_click()">确认办理</div>
			<div class="mobile_w_h30"></div>
			<div class="mobile_w_h30"></div>
		<#else>




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

			</#if>

		</div>
		
		
		
		
	</div>
	
	<script type="text/javascript">
		$(function() {
			//zen.mobile.page_muserbidagree()
		});
	</script>
	
	
	<#else>
	<@m_mb_common__nologin />
</#if>
	
	
	
<@m_mb_common_footer />
</body>