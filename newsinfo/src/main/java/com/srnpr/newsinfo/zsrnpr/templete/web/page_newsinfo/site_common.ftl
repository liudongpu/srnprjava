
<#macro m_site_common_header nav="">
	<div class="layout_header">
            <div class="header_top">
                <div class="website_center">
                <div class="header_box">
                    <div class="lay_header_position">
                        <div class="header_logo"></div>
                        <div id="header_user" class="header_user">
							<a href="${base_url}newsinfo/login-login">登&nbsp;陆</a>&nbsp;|&nbsp;<a href="${base_url}newsinfo/reg-reg">注&nbsp;册</a>
						</div>
                    </div>
                    <div class="lay_header_nav">
                        <div class="header_nav_left">
                            <ul>
                                <li><a <#if (nav=="main")> class="active"</#if> href="/">首 页</a></li>
                                <li><a <#if (nav=="info")> class="active"</#if> href="/newsinfo/info-list">博观资讯</a></li>
                                <li><a <#if (nav=="notice")> class="active"</#if> href="/newsinfo/notice-list">博观公告</a></li>
                                <li><a <#if (nav=="auction")> class="active"</#if> href="/newsinfo/auction-list">预展及成交 </a></li>
                                <li><a <#if (nav=="book")> class="active"</#if> href="/newsinfo/book-list"> 博观书房 </a></li>
                                <li><a <#if (nav=="club")> class="active"</#if> href="/newsinfo/club-list">博观俱乐部 </a></li>
                                <li><a <#if (nav=="people")> class="active"</#if> href="/newsinfo/people-list">名家论道</a></li>
                            </ul>
                        </div>
                        <div class="header_nav_right">
                            <div class="header_nav_search">
								<input type="text" id="site_common_search_box" />
								<div onclick="zen.site.search()"></div>
							</div>
                        </div>
                    </div>
                    
                    <div class="header_regtip"></div>
                </div>
                </div>
            </div>
        </div>
</#macro>

<#macro m_site_common_footer>
	<div class="layout_footer">

			<div class="website_center">
				
				<div class="c_link">
					
					<#list pageexec.upDataOrder("info_static","order_index","system_cid","30330001") as el>
	                           <a href="${base_url}newsinfo/static-static-${el["code"]}"> ${el["title"]}</a>
	                           <#if el_has_next>
	                           &nbsp;&nbsp;|&nbsp;&nbsp;
	                           </#if>
							 </#list>
					
					
				</div>
				<div class="h_40"></div>
				北京市朝阳区三间房东路1号（懋隆文化产业创意园）10栋<br/> 贵宾专线：86-10-51695556/7 <br/>邮箱：pm@boguanpaimai.com
				<br/><br/>
				Copyright @2013               北京博观国际拍卖有限公司            版权所有
			</div>

	</div>
</#macro>




<#macro m_site_common_piclist>

 		<div class="index_picnav"></div>
		<div class="main_pics">
			<div class="index_piclist" id="zen_picnav_images">
				<div class="index_piclist_position">
					<div class="index_piclist_box zen_picnav_list">
						<ul>
						 	<#list pageexec.upDataOrder("info_images","order_id") as el>
	                            <li><a href="${base_url}newsinfo/img-img-${el["uid"]}"> <img
									src="${el["file_url"]}"
									alt="${el["title"]}"> <span>${el["title"]}</span>
							</a></li>
							 
							 </#list>
						
						
						
						
						
						</ul>
					</div>
				</div>
				<div class="index_piclist_nav zen_picnav_nav">
					<ul>
					</ul>
				</div>
			</div>
		</div>
            
            
            
             <script type="text/javascript">
                   $(window).load(function() {
					zen.site.picnav('zen_picnav_images','i');
				});
                </script>

</#macro>



<#macro m_site_common_indexmain>



</#macro>


<#macro m_site_common_share_text text="分享" title="" url="">
<span onmouseover="jathis_setfunc('${title}','${url}')">
<a href="http://www.jiathis.com/share?uid=1771750"  class="jiathis jiathis_txt jiathis_separator " target="_blank">${text}</a>
</span>
</#macro>

<#macro m_site_common_share_script>

<script type="text/javascript">

function jathis_setfunc(title,url)
{
	jiathis_config.title = title;
	
	var sShareUrl=location.href;
	
	if(url!=undefined)
	{
		sShareUrl=sShareUrl.substring(0,sShareUrl.lastIndexOf('/'))+'/'+url;
	}
	
	
	jiathis_config.url = sShareUrl;
	
}



var jiathis_config = {siteNum:6,
	sm:"tsina,tqq,weixin,qzone,copy,email"};
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js?uid=1362787344359325" charset="utf-8"></script>

</#macro>










