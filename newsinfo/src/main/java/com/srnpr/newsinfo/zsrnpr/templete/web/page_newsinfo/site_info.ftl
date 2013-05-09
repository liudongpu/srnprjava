


<#macro m_site_info_listinfo>
				<#list pageexec.upDataOrder("info_news","time") as el> 	 
					<div class="info_item">
						<div class="c_title">
							<h3>${el["title"]}</h3>
						</div>
						<div class="c_time">发表时间：${el["create_time"]} | 文章出处：博观拍卖</div>
						<#if (el["file_url"]??)&&(el["file_url"]!="")>
						<div class="c_image">
							<img
								src="${el["file_url"]}" />
						</div>
						</#if>
						<div class="c_des">导 语：
							${el["note"]}</div>
						<div class="c_tips">
							<span class="b_icon c_share"></span><@m_site_common_share_text title=el["title"] url="content-content-"+el["uid"] /><span
								class="b_icon c_comment"></span>&nbsp;&nbsp;&nbsp;&nbsp;<@m_site_common_share_text title=el["title"] url="content-content-"+el["uid"] />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="content-content-${el["uid"]}">阅读全文〉</a>
						</div>
						<div class="c_split"></div>
					</div>
							 
					</#list>

</#macro>



<#macro m_site_info_listnotice>
				<#list pageexec.upDataOrder("info_notice","time") as el> 	 
					<div class="info_item">
						<div class="c_title">
							<h3>${el["title"]}</h3>
						</div>
						<div class="c_time">发表时间：${el["create_time"]} | 文章出处：博观拍卖</div>
						<#if (el["file_url"]??)&&(el["file_url"]!="")>
						<div class="c_image">
							<img
								src="${el["file_url"]}" />
						</div>
						</#if>
						<div class="c_des">导 语：
							${el["note"]}</div>
						<div class="c_tips">
							<span class="b_icon c_share"></span><@m_site_common_share_text title=el["title"] url="content-content-"+el["uid"] /><span
								class="b_icon c_comment"></span>&nbsp;&nbsp;&nbsp;&nbsp;<@m_site_common_share_text title=el["title"] url="content-content-"+el["uid"] />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="affiche-affiche-${el["uid"]}">阅读全文〉</a>
						</div>
						<div class="c_split"></div>
					</div>
							 
					</#list>

</#macro>












<#macro m_site_info_lastinfo>

					<div class="info_sort">
						<div class="c_title">最新文章</div>
						<ul>
						
						<#list pageexec.upDataList("info_news","uid,title","orderid",0,10) as el> 	
						<li><a href="content-content-${el["uid"]}">${el["title"]} </a></li>
						 
						</#list>
						
							
							
							
							
						</ul>
					</div>


</#macro>

<#macro m_site_info_lastnotice>
				<div class="info_sort">
						<div class="c_title">最近公告</div>
						<ul>
						<#list pageexec.upDataList("info_notice","uid,title","orderid",0,10) as el> 	
						<li><a href="affiche-affiche-${el["uid"]}">${el["title"]} </a></li>
						 
						</#list>
						
							
						</ul>
					</div>
</#macro>