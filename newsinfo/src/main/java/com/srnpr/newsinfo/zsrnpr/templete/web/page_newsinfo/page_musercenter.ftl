
<@m_mb_common_header nav="main"  button="back"/>


	
	<#if (pageinfo.getPageOptions()?exists) >
	
	
	<div class="mobile_lay_main">
		<div class="mobile_mlogin_body">

			<div class="mobile_mlogin_box">
				<div class="mobile_w_h10"></div>
				<div class="mobile_mlogin_topbg ">
					<div class="mobile_mlogin_topname" id="mobile_mlogin_topname"></div>
				</div>
				<div class="mobile_w_h30 mobile_w_border_b"></div>
				<div class="mobile_mlogin_list mobile_w_border_b">
					<a href="/newsinfo/muserinfo-user">
					<div class="mobile_mlogin_item mobile_w_border_b">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_set"></div>
						<div class="mobile_mlogin_text">账户设置</div>
						<div class="mobile_mlogin_link">&gt;</div>
					</div>
					</a>
					<a href="/newsinfo/muserpass-user">
					<div class="mobile_mlogin_item mobile_w_border_b">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_lock"></div>
						<div class="mobile_mlogin_text">密码设置</div>
						<div class="mobile_mlogin_link">&gt;</div>
					</div>
					</a>
				</div>
				<div class="mobile_w_h20 "></div>

				<div class="mobile_mlogin_list mobile_w_border_b">
					<a href="/newsinfo/musercollect-user">
					<div class="mobile_mlogin_item mobile_w_border_b mobile_w_border_t">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_collect"></div>
						<div class="mobile_mlogin_text">我的收藏</div>
						<div class="mobile_mlogin_link">&gt;</div>
					</div>
					</a>

				</div>
				<div class="mobile_w_h20 "></div>

				<div class="mobile_mlogin_list mobile_w_border_b">
					<a href="/newsinfo/musercomment-user">
					<div class="mobile_mlogin_item mobile_w_border_b mobile_w_border_t">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_comment"></div>
						<div class="mobile_mlogin_text">我的评论</div>
						<div class="mobile_mlogin_link">&gt;</div>
					</div>
					</a>

				</div>

				<div class="mobile_w_h30 "></div>




				<div class="mobile_w_h20 "></div>
				<div class="mobile_base_buttom"  onclick="zen.mobile.logout()">退出登录</div>
				<div class="mobile_w_h30 "></div>

			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function() {
			zen.mobile.initlogin()
		});
	</script>
	
	
		
	<#else>
	<@m_mb_common__nologin />
</#if>
	
	
<@m_mb_common_footer />
</body>