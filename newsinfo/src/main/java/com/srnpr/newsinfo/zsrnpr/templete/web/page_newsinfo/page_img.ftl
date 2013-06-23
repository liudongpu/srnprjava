
<#assign images_info=pageexec.upDataOne("info_images","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_site_common_header nav="" title=images_info["title"] />

<@m_html_addjs [base_zero+"lib/jquery/jquery.showcase.js"] />
<@m_html_addcss [base_zero+"themes/website/jplug/showcase/css/showcase.css"] />




	<div class="layout_main website_center">
		<div class="b_sitenav"></div>

		<div class="img_body">
			<div class="img_title">
				<div class="c_title">${images_info["title"]}</div>
			</div>
			<div class="h_20"></div>
			<div class="img_main">
				<div class="c_left">

					<div class="c_nav">
					
					<#assign images_last=pageexec.upDataOneQuery("info_images","zid<:ozid","ozid",images_info["zid"]?upper_case)?default('')>
						<#if images_last?is_hash>
						<a   href="img-img-${images_last["uid"]}" >
							<div class="c_img">
								<img src="${images_last["file_url"]}"/>
							</div>
							<div class="c_href">上一图集</div>
						</a>
						</#if>
					</div>

				</div>
				<div class="img_show">

					<div id="showcase" class="showcase">



						<#list pageexec.upData("info_img","images_uid",pageinfo.getWebSet()["Url_Option"]) as el> 	
						
						
						<div class="showcase-slide">
							<div class="showcase-content">
								<div class="showcase-content-wrapper">
									<img
										src="${el["file_url"]}"
										alt="" />


								</div>
							</div>
							<div class="showcase-thumbnail">
								<img
									src="${el["file_url"]}"
									alt="" width="140px" />
								<div class="showcase-thumbnail-cover"></div>
							</div>
						</div>
						
						</#list>


					</div>
				</div>

				<div class=c_right>
					<div class="c_nav">
					<#assign images_next=pageexec.upDataOneQuery("info_images","zid>:ozid","ozid",images_info["zid"]?upper_case)?default('')>
						<#if images_next?is_hash>
						<a   href="img-img-${images_next["uid"]}" >
							<div class="c_img">
								<img src="${images_next["file_url"]}"/>
							</div>
							<div class="c_href">下一图集</div>
						</a>
						</#if>
					</div>
				</div>

			</div>
			<div class="h_20"></div>
		</div>







		<script type="text/javascript">
			$(document).ready(function() {
				$("#showcase").awShowcase({
					content_width : 800,
					content_height : 470,
					fit_to_parent : false,
					auto : true,
					interval : 3000,
					continuous : false,
					loading : true,
					tooltip_width : 200,
					tooltip_icon_width : 32,
					tooltip_icon_height : 32,
					tooltip_offsetx : 18,
					tooltip_offsety : 0,
					arrows : true,
					buttons : false,
					btn_numbers : true,
					keybord_keys : true,
					mousetrace : false, /* Trace x and y coordinates for the mouse */
					pauseonover : true,
					stoponclick : true,
					transition : 'hslide', /* hslide/vslide/fade */
					transition_speed : 500,
					transition_delay : 300,
					show_caption : 'onhover', /* onload/onhover/show */
					thumbnails : true,
					thumbnails_position : 'outside-last', /* outside-last/outside-first/inside-last/inside-first */
					thumbnails_direction : 'horizontal', /* vertical/horizontal */
					thumbnails_slidex : 0, /* 0 = auto / 1 = slide one thumbnail / 2 = slide two thumbnails / etc. */
					dynamic_height : false, /* For dynamic height to work in webkit you need to set the width and height of images in the source. Usually works to only set the dimension of the first slide in the showcase. */
					speed_change : false, /* Set to true to prevent users from swithing more then one slide at once. */
					viewline : false
				/* If set to true content_width, thumbnails, transition and dynamic_height will be disabled. As for dynamic height you need to set the width and height of images in the source. */
				});
			});
		</script>
	</div>
	
	
	
	
	
<@m_site_common_footer />
</body>