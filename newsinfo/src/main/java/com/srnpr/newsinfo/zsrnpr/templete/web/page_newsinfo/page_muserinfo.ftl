
<@m_mb_common_header nav="main"  button="back"/>


	<div class="mobile_lay_main">
		<div class="mobile_mlogin_body">

			<div class="mobile_mlogin_box">
				<div class="mobile_w_h30 "></div>
				<div class="mobile_w_h30 mobile_w_border_b"></div>
				<div class="mobile_mlogin_list mobile_w_border_b">

					<div class="mobile_mlogin_item mobile_w_border_b">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_mail"></div>
						<div class="mobile_mlogin_input">
							<input type="text"  id="user_email" placeholder="请输入您的邮箱" value="${pageinfo.getPageOptions()["user_email"]}"/>
						</div>
					</div>

					<div class="mobile_mlogin_item">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_phone"></div>
						<div class="mobile_mlogin_input">
							<input type="text" id="phone_num" placeholder="请输入您的手机号" value="${pageinfo.getPageOptions()["phone_num"]}"/>
						</div>
					</div>
					<div class="mobile_mlogin_item">
						<div class="mobile_mlogin_icon_base mobile_mlogin_icon_name"></div>
						<div class="mobile_mlogin_input">
							<input type="text" id="real_name" placeholder="请输入您的真实姓名"  value="${pageinfo.getPageOptions()["real_name"]}" />
						</div>
					</div>
				</div>
				<div class="mobile_w_h30 "></div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_base_buttom"  onclick="zen.mobile.change_info()">确认修改</div>
				<div class="mobile_w_h30 "></div>
				
			</div>
		</div>
	</div>
<@m_mb_common_footer />
</body>