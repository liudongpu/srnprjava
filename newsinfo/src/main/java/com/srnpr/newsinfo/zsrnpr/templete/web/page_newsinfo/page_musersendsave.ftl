
<@m_mb_common_header nav="main"  button="back"/>






	<div class="mobile_lay_main">
		<div class="mobile_mbid_body">

			<div class="mobile_mbid_box">
				<div class="mobile_mbid_form">
					<div class="mobile_w_h30"></div>
					<div class="mobile_mbid_form_tips">填写委托人信息：</div>
					<div class="mobile_w_h20"></div>
					<div
						class="mobile_mbid_form_list mobile_w_border_b mobile_w_border_t">
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">姓名</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="user_name" placeholder="请输入委托人姓名"  value="${pageinfo.getPageOptions()["real_name"]}" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">电话</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="user_phone" placeholder="请输入委托人电话"  value="${pageinfo.getPageOptions()["phone_num"]}"/>
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">邮箱</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="user_email" placeholder="请输入委托人邮箱"  value="${pageinfo.getPageOptions()["user_email"]}"/>
							</div>

						</div>

						<div class="mobile_w_clear"></div>
					</div>
					<div class="mobile_w_h30"></div>
					<div class="mobile_mbid_form_tips">填写拍品信息：</div>
					<div class="mobile_w_h20"></div>
					<div
						class="mobile_mbid_form_list mobile_w_border_b mobile_w_border_t">
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">名称</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="good_name" placeholder="请输入拍品名称" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">作者</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="good_author" placeholder="请输入作者" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">尺寸</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="good_size" placeholder="请输入尺寸" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">重量</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="good_weight" placeholder="请输入重量" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">委托底价</div>
							<div class="mobile_mbid_form_right">
								<input type="text" id="good_price" placeholder="请输入委托底价（元）" />
							</div>

						</div>
						
						
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">拍品照片1</div>
							<div class="mobile_mbid_form_right">
								<@m_mb_common_upload id="photo_one" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">拍品照片2</div>
							<div class="mobile_mbid_form_right">
								<@m_mb_common_upload id="photo_two" />
							</div>

						</div>
						<div class="mobile_mbid_form_item mobile_w_border_b">
							<div class="mobile_mbid_form_left">拍品照片3</div>
							<div class="mobile_mbid_form_right">
								<@m_mb_common_upload id="photo_three" />
							</div>

						</div>
						<div class="mobile_w_clear"></div>
					</div>
					<div class="mobile_w_h10"></div>
					<div class="mobile_w_h30"></div>
					<div class="mobile_base_buttom" onclick="zen.mobile.usersendsave_click()">提交</div>
					
					<div class="mobile_w_h30"></div>
				</div>


			</div>
		</div>
	</div>
	
	
	
	

<@m_mb_common_footer />
</body>