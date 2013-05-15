

<#macro m_site_user_nologin from="">

  <script>
  location.href="login-login?zen_site_url_login_from=${from}";
  </script>

</#macro>



<#macro m_site_user_header nav="">

				<div class="user_header_nav">
					<a href="${base_url}newsinfo/usercenter-user">
						<div class="c_back c_nav1"></div>
						<div class="c_title">账户设置</div>
					</a> 
					<a href="${base_url}newsinfo/userpass-user"><div class="c_back c_nav2"></div>
						<div class="c_title">密码设置</div></a> 
						<a href="${base_url}newsinfo/usercollect-user"><div
							class="c_back c_nav3"></div>
						<div class="c_title">我的收藏</div>
						</a> <a href="${base_url}newsinfo/usercomment-user"><div
							class="c_back c_nav4"></div>
						<div class="c_title">我的评论</div></a>
				</div>

</#macro>


















