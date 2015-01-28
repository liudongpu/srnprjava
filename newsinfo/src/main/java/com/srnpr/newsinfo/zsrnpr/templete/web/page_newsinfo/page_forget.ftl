
<@m_site_common_header nav="" title="会员登录" />


	<div class="layout_main website_center">
			<input type="hidden" id="zen_site_url_login_from" value="${pageexec.upRequestParameter("zen_site_url_login_from")}" />
			<div class="layout_height8">

			</div>

			<div class="login_box">

				<div class="c_box">

					<div class="c_desc">
						<h2>忘记密码</h2>
					</div>
					<div class="c_left">
						<span>邮箱：</span><input type="text" id="login_name" />&nbsp;&nbsp;请输入注册时的邮箱<br/><br/>
						
					</div>
					<div class="c_right">
						<div class="c_info">
							还没有账号，<a href="${base_url}newsinfo/reg-reg" class="b_button">注册</a>
							
						</div>
						
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="h_40"></div>
				<div class="c_buttons"><a class="b_button" onclick="zen.site.login_forget()">发送邮件</a></div>
			<div class="h_40"></div><div class="h_40"></div>
			</div>

		</div>

<@m_site_common_footer />
</body>