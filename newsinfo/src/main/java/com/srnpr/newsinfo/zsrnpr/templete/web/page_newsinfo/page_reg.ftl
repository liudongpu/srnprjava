<body class="website_body">
<@m_site_common_header nav="" />


	<div class="layout_main website_center">

			<div class="layout_height8">

			</div>

			<div class="login_box">

				<div class="c_box">

					<div class="c_desc">
						<h2>游客您好，请注册</h2>
					</div>
					<div class="c_left">
						<span>邮箱：</span><input type="text" id="reg_name" />&nbsp;&nbsp;请输入您常用的邮箱<br/><br/>
						<span>密码：</span><input type="password" id="reg_pass"/>&nbsp;&nbsp;请输入密码<br/><br/>
						<span>重复密码：</span><input type="password" id="reg_pass2"/>&nbsp;&nbsp;请输入密码
					</div>
					<div class="c_right">
						<div class="c_info">
							已有账号，<a href="${base_url}newsinfo/login-login" class="b_button">登陆</a>
							
						</div>
						
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="h_40"></div>
				<div class="c_buttons"><a class="b_button" onclick="zen.site.loginreg()">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">注册用户协议</a> </div>
			<div class="h_40"></div>
			<div class="h_40"></div>
			</div>

		</div>

<@m_site_common_footer />
</body>