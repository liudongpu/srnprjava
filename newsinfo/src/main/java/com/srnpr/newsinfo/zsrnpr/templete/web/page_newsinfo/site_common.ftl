
<#macro m_site_common_header nav="" title="" >

<title><@m_site_common_title nav title /></title> 
<meta name="keywords" content="博观拍卖,拍卖,博观,珠宝,玉石,机构" />
<meta name="description" content="${title}-博观拍卖 - 中国珠宝玉石专业拍卖机构" />


</head>
<body class="website_body">
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
                            <div class="header_nav_search" onmouseover="$('#site_common_search_box').show()">
								<input type="text" id="site_common_search_box" style="display:none;" />
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

<#macro m_site_common_title nav="" title="">
	<@compress single_line=true>
	
	<#if (nav=="main")>博观拍卖 - 中国珠宝玉石专业拍卖机构 
	<#else>
			${title}
			<#if (title?length>0)>_</#if>
			
			<#if (nav=="info")>博观资讯</#if>
			<#if (nav=="notice")>博观公告</#if>
            <#if (nav=="auction")>预展及成交</#if>
            <#if (nav=="book")>博观书房 </#if>
            <#if (nav=="club")>博观俱乐部 </#if>
            <#if (nav=="people")>名家论道</#if>
			_博观拍卖
	</#if>
			
	</@compress>
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
				北京市朝阳区三间房东路1号（懋隆文化产业创意园）10栋<br/> 贵宾专线：86-10-65760069\65769969<br/>传真：86-10-65760969 <br/>邮箱：pm@boguanpaimai.com
				<br/><br/>
				Copyright @2013               北京博观国际拍卖有限公司            版权所有
			</div>

	</div>
</#macro>




<#macro m_site_common_piclist cid="30350001">

 		<div class="index_picnav"></div>
		<div class="main_pics">
			<div class="index_piclist" id="zen_picnav_images">
				<div class="index_piclist_position">
					<div class="index_piclist_box zen_picnav_list">
						<ul>
						 	<#list pageexec.upDataOrder("info_images","order_id","position_cid",cid) as el>
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

<style>
.ckepopBottom
{
	display:none;
}
</style>

<script type="text/javascript">

function jathis_setfunc(title,url)
{
	jiathis_config.title = title;
	jiathis_config.url = zen.site.upurl(url);
}

var jiathis_config = {siteNum:6,
	sm:"tsina,tqq,weixin,qzone,copy,email"};
</script>
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js?uid=1362787344359325" charset="utf-8"></script>

</#macro>


<#macro m_site_common_comment_text text="评论" uid="" title="" url="">

<input type="hidden" id="zen_site_common_comment_title_${uid}" value="${title}" />
<input type="hidden" id="zen_site_common_comment_url_${uid}" value="${url}" />


<#if text=="">
<script>
$(window).ready(function(){zen.site.comment_show('${uid}')});
</script>
<#else>

<span onclick="zen.site.comment_show('${uid}')">
<a href="#this">${text}</a>
</span>

</#if>

</#macro>



<#macro m_site_common_collect_text text="收藏" uid="" title="" url="">

<input type="hidden" id="zen_site_common_collect_title_${uid}" value="${title}" />
<input type="hidden" id="zen_site_common_collect_url_${uid}" value="${url}" />

<span onclick="zen.site.collect_submit('${uid}')">
<a href="#this">${text}</a>
</span>

</#macro>








<#macro m_site_common_breadcrumb crumb>
<a href="/">返回首页</a>
<#list crumb as el>
	
	<#if (el_index%2==0)>
		&gt;  <a href="${crumb[el_index+1]?default("")}">${el}</a>
	</#if>


</#list>


</#macro>



<#macro m_site_common_site_nav pageNav>

<#if (pageNav.getPageIndex()>1)>
<a href="?z_page_index=${pageNav.getPageIndex()-1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">上一页</a>
</#if>

<span>第${pageNav.getPageIndex()}页</span>

<#if (pageNav.getPageIndex()*pageNav.getPageSize()<pageNav.getPageCount())>
<a href="?z_page_index=${pageNav.getPageIndex()+1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">下一页</a>
</#if>

</#macro>

















