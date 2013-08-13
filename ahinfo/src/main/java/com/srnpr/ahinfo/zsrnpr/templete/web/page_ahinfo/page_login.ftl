
<@m_site_common_header />

<@m_site_common_page_before />
				
				<div class="ahinfo_user">
							<div class="c_title">欢迎登录奥华官网</div>
							<form class="form-horizontal"
								action="/ahinfo/func-login" method="post">
								<div class="b_h40"></div>
								<div class="control-group">
									<span class="c_weight">注册邮箱：</span> <input type="text"
										name="login_name" /> <span class="help-inline">请输入注册时的邮箱</span>
								</div>
								<div class="b_h10"></div>
								<div class="control-group">
									<span class="c_weight">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：</span>
									<input type="password" name="login_pass" /> <span
										class="help-inline">请输入账户密码</span>
								</div>
								<div class="b_h10"></div>
								<div class="control-group">
									<span class="c_weight"></span> <a class="btn "
										onclick="zen.ahinfo.submit(this,zen.ahinfo.loginsuccess)">&nbsp;&nbsp;登&nbsp;&nbsp;录&nbsp;&nbsp;</a>
									<span class="help-inline">&nbsp;&nbsp;&nbsp;&nbsp;<a href="/ahinfo/reg">注册新用户</a></span>
								</div>
							</form>
						</div>

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



