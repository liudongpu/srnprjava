<body class="website_body">
<@m_site_common_header nav="" />

<#include "site_user.ftl" />

<#if (pageinfo.getPageOptions()?exists) >

	<div class="layout_main website_center">
		<div class="user_body">
			<div class="user_header"></div>
			<div class="user_main">

				<div class="user_change">
					<div class="h_40"></div>
					<form class="form-horizontal">
						
						<div class="control-group">
							<label class="control-label" for="inputPassword">Password</label>
							<div class="controls">
								<input type="password" id="user_phone" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">New Password</label>
							<div class="controls">
								<input type="text" id="real_name" placeholder="" value="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">New Password2</label>
							<div class="controls">
								<input type="text" id="real_name" placeholder="" value="">
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