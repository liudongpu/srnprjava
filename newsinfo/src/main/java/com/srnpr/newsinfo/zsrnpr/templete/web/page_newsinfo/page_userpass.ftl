<body class="website_body">
<@m_site_common_header nav="" />

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
								<input type="password" id="user_phone" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">新密码</label>
							<div class="controls">
								<input type="password" id="real_name" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">重复密码</label>
							<div class="controls">
								<input type="password" id="real_name" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								
								<a class="b_button">Sign in</a>
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