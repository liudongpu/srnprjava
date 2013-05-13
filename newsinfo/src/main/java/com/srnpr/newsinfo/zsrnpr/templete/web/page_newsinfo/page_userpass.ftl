
<@m_site_common_header nav=""  title="会员中心" />

<#include "site_user.ftl" />

<#if (pageinfo.getPageOptions()?exists) >

	<div class="layout_main website_center">
		<div class="user_body">
			<div class="user_header"><@m_site_user_header nav="pass" /></div>
			<div class="user_main">

				<div class="user_change">
					<div class="h_40"></div>
					<form class="form-horizontal">
						
						<div class="control-group">
							<label class="control-label" for="inputPassword">原密码</label>
							<div class="controls">
								<input type="password" id="old_login_pass" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">新密码</label>
							<div class="controls">
								<input type="password" id="login_pass" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">重复密码</label>
							<div class="controls">
								<input type="password" id="login_pass2" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								
								<a class="b_button" onclick="zen.site.change_pass()">确认提交</a>
							</div>
						</div>
					</form>
					<div class="h_40"></div>
				</div>

			</div>
		</div>



	</div>
	
<#else>
		<@m_site_user_nologin />
</#if>
<@m_site_common_footer />
</body>