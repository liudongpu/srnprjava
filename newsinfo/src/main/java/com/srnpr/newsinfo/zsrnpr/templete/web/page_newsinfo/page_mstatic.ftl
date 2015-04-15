
<@m_mb_common_header nav="main"  button="back"/>

<#assign
	static_info=pageexec.upDataOne("info_static","code",pageinfo.getWebSet()["Url_Option"])>




	
	<div class="mobile_lay_main">
		<div class="mobile_mstatic_body">

			<div class="mobile_mstatic_box">
				<div class="mobile_w_h20 "></div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_mstatic_title">${static_info["title"]}</div>
				<div class="mobile_w_h20"></div>
				
				<div class="mobile_w_h5 mobile_w_border_b"></div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mstatic_info">${static_info["content"]?default('')}</div>
				<div class="mobile_w_h30"></div>
				<div class="mobile_w_h30"></div>

			</div>
		</div>
	</div>	
	


<@m_mb_common_footer />
</body>