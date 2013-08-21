

<#assign page_obj=pageexec.upDataOne("ah_good","uid",pageinfo.getWebSet()["Url_View"])>
<@m_site_common_header />

<@m_site_common_page_before  now_menu="2-1"/>
				
				<div class="ahinfo_info">
							<div class="c_title">${page_obj["name"]}</div>
							<div class="c_info">解决问题：${page_obj["note"]}</div>
							<div class="c_info">单次价格：${page_obj["one_price"]}</div>
							<div class="c_info">同类项目：
							<#list pageexec.upData("ah_good","special_uid",page_obj["special_uid"]) as ec>
								<a href="/ahinfo/good-${ec["uid"]}">${ec["name"]}</a>
							</#list>
							</div>
							<div class="c_line"></div>
							<div class="c_tryprice">价格：${page_obj["good_price"]}</div>
							<div class="c_realprice">体验价：${page_obj["try_price"]}</div>
							<div clas="c_want">
								<div class="c_try" onclick="zen.ahinfo.try_post()"></div>
								<div class="c_post" onclick="zen.ahinfo.comment_post()">+写评论</div>
							</div>
							<div class="clearfix"></div>
							<div class="c_show">${page_obj["content"]}</div>
					</div>
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



