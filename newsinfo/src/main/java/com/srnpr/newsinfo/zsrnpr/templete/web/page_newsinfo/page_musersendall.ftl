
<@m_mb_common_header nav="main"  button="back"/>



<#if (pageinfo.getPageOptions()?exists) >


	<div class="mobile_lay_main">
		<div class="mobile_mbid_body">

			<div class="mobile_mbid_box">

				<div class="mobile_mbid_table">
					<table>
						<tr>
							<th class="mobile_mbid_table_th1">拍品名称</th>
							<th class="mobile_mbid_table_th2"></th>
							<th class="mobile_mbid_table_th4">委托底价</th>
							<th class="mobile_mbid_table_th5">操作</th>
						</tr>
						<#assign  pageData=pageexec.upDataOrder("user_send","-create_time","user_uid",pageinfo.getPageOptions()["uid"])  >
						<#list pageData as el> 
						<tr>
							<td><a href="musersendshow-user-${el["uid"]}">${el["good_name"]}</a></td>
							<td>|</td>
							<td><a href="musersendshow-user-${el["uid"]}">￥${el["good_price"]}</a></td>
							<td><a href="javascript:zen.mobile.usersenddel_click('${el["uid"]}')">删除</a></td>
						</tr>
						</#list>
					</table>

				</div>

				<div class="mobile_w_h30 "></div>
				<div class="mobile_base_buttom" onclick="zen.site.href('newsinfo/musersendagree-user')">我要送拍</div>
				<div class="mobile_w_h30 "></div>
			</div>
		</div>
	</div>
<#else>
	<@m_mb_common__nologin />
</#if>
<@m_mb_common_footer />
</body>