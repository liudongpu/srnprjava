
<#assign bd_url="">
<#assign bd_img_cdn_url="http://www.boguanpaimai.com">

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
                        <div id="header_weixin" style="float:right;width:40px;height:40px;margin-top:90px;margin-left:10px;">
							<img src="${bd_url}/zzero/web/themes/website/images/bgpmweixin.jpg"/>
						</div>
						<div id="header_weixin_big" style="position:absolute;right:0px;top:30px;width:200px;height:200px;z-index:99999;display:none;">
							<img src="${bd_url}/zzero/web/themes/website/images/bgpmweixin.jpg"/>
						</div>
						
						<script>
						
						$('#header_weixin').hover(function(){$('#header_weixin_big').show()});
						$('#header_weixin_big').hover(function(){},function(){$('#header_weixin_big').hide()});
						
						</script>
						
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
				北京市朝阳区三间房东路1号（懋隆文化产业创意园）10栋<br/> 贵宾专线：86-10-65760069\65769969<br/>传真：86-10-65760969 <br/>邮箱：pm@boguanpaimai.com<br/>京ICP备14007245号-1
				<br/><br/>
				<div style="display:none;">
				<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5501354'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s25.cnzz.com/stat.php%3Fid%3D5501354' type='text/javascript'%3E%3C/script%3E"));</script>
				</div>
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
						 	<#list pageexec.upDataTop("info_images","","-zid",12,"position_cid",cid) as el>
	                            <li><a href="${base_url}newsinfo/img-img-${el["uid"]}" title="${el["title"]}"> <img
									src="${el["file_url"]}"
									alt="${el["title"]}"> <span><#if (el["title"]?length>22)>${el["title"]?substring(0,22)}<#else> ${el["title"]}</#if></span>
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
<a href="?z_page_index=1&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">首页</a>
<a href="?z_page_index=${pageNav.getPageIndex()-1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">上一页</a>
</#if>

<span>第${pageNav.getPageIndex()}页</span>

<#if (pageNav.getPageIndex()*pageNav.getPageSize()<pageNav.getPageCount())>
<a href="?z_page_index=${pageNav.getPageIndex()+1}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">下一页</a>
<a href="?z_page_index=${(pageNav.getPageCount()/pageNav.getPageSize())?ceiling}&z_page_count=${pageNav.getPageCount()}&z_page_size=${pageNav.getPageSize()}">尾页</a>
</#if>

</#macro>









<#macro m_mb_common_header nav="" title="" type="0" button="user">

<title><@m_site_common_title nav title /></title> 
<meta name="keywords" content="博观拍卖,拍卖,博观,珠宝,玉石,机构" />
<meta name="description" content="${title}-博观拍卖 - 中国珠宝玉石专业拍卖机构" />
<meta
	content="width=device-width, initial-scale=0.65, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta content="telephone=no" name="format-detection" />
<meta content="email=no" name="format-detection" />


<link type="text/css" href="${bd_url}/zzero/web/themes/website/sitecss/mobile.css"
	rel="stylesheet">
<script type="text/javascript" src="${bd_url}/zzero/web/zen/zen_mobile.js"></script>
	

<#if type=="1" >
		<script type="text/javascript" src="${bd_url}/zzero/web/lib/iscroll/iscroll-probe.js"></script>

	<style>
	* {
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	
	html {
		-ms-touch-action: none;
	}
	
	body {
		height: 100px;
		overflow: hidden;
		/* this is important to prevent the whole page to bounce */
	}
	</style>
</#if>

	
</head>
<body class="mobile_body mobile_w_bg_base">

<#if type=="1" >
		<div class="mobile_base_scroll_wrap" id="mobile_base_scroll_wrap">
		<div class="mobile_base_scroll_box" id="mobile_base_scroll_box">
</#if>


	<div class="mobile_lay_head">
		<div class="mobile_head_left">
		<#if button=="user"><a href="/newsinfo/musercenter-user"><div class="mobile_head_icon_user"></div></a></#if>
		<#if button=="back"><a href="javascript:history.go(-1)"><div class="mobile_head_icon_back"></div></a></#if>
		</div>
		<div class="mobile_head_center">
			<div class="mobile_head_logo"></div>
		</div>
		<div class="mobile_head_right" onclick="zen.mobile.menu_open()"></div>
		<div class="mobile_head_menu" id="mobile_head_menu">
			<div class="mobile_head_menu_content">
				<div class="mobile_head_menu_item mobile_w_border_b">
					<div class="mobile_head_menu_left mobile_head_menu_one"></div>
					<div class="mobile_head_menu_right">分享</div>
				</div>
				<div class="mobile_head_menu_item mobile_w_border_b">
				<a href="/newsinfo/mindex-list">
					<div class="mobile_head_menu_left mobile_head_menu_two"></div>
					<div class="mobile_head_menu_right">回到首页</div>
				</a>
				</div>
				<div class="mobile_head_menu_item mobile_w_border_b">
					<div class="mobile_head_menu_left mobile_head_menu_three"></div>
					<div class="mobile_head_menu_right">联系电话</div>
				</div>
				<div class="mobile_head_menu_item mobile_w_border_b">
					<div class="mobile_head_menu_left mobile_head_menu_four"></div>
					<div class="mobile_head_menu_right">在线送拍</div>
				</div>
				<div class="mobile_head_menu_item">
					<div class="mobile_head_menu_left mobile_head_menu_five"></div>
					<div class="mobile_head_menu_right">客户服务</div>
				</div>
			</div>
		</div>

	</div>
</#macro>





<#macro m_mb_common_footer>




	
</#macro>


