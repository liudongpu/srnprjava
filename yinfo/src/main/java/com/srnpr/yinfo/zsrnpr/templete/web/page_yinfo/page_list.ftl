

<@m_site_common_header />

	<div class="y_center">
		<div class="yinfo_list">

			<div class="yinfo_list_nav">
				<a href="/">回到首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<a href="/">列表页</a>
			</div>
			<div class="yinfo_list_query">

				<div class="c_item">
					<div class="c_left">
					<span>所在区域：</span></div> <div class="c_right">
					
					<@m_page_list_query title="不限" source="area_11" now=0/></div>
					<div class="clearfix"></div>
					
					
				</div>
				<div class="c_item">
					<div class="c_left">
					<span>价格范围：</span></div> <div class="c_right">
					<@m_page_list_query title="不限" source="3251" now=1/>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="c_item">
					<div class="c_left">
					<span>老人情况：</span></div> <div class="c_right"> 
					<@m_page_list_query title="不限" source="3252" now=2/>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class="c_order">
					<span>排序方式：</span>
					<@m_page_list_query title="默认" source="3260" now=3/>
				</div>
			</div>
			<div class="b_h20"></div>

			<div>
			
				<#assign  pageSearchNav=pagemethod.upListPage(pageinfo.getWebSet()["Url_View"]?default(""))  >
				

				<div class="yinfo_list_left">
					<#list pageSearchNav.getPageData() as el> 
					<div class="c_item">
							<@m_site_common_site_list el "list"/>
					</div>
					</#list>
					
					
					<div class="clearfix"></div>
					<div class="yinfo_list_pagintion">
					<@m_site_common_site_nav pageSearchNav />
					</div>
				</div>
				<div class="yinfo_list_right">
					<div class="c_item">
						<img
							src="http://script.daoxila.com/root/img/img_20111201/service_pic.gif" />
					</div>
					<div class="c_item">
						<img
							src="http://image.daoxila.com/hotel/small/2012-07/20120717162835.jpg" />
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>









	<script>
		$(document).ready(function() {
			zen.yinfo.headernav(false);
		});
	</script>



<@m_site_common_footer />

<#macro m_page_list_query  title="不限" source="area_11" now=0 >
	
	${pagemethod.upListLink(pageinfo.getWebSet()["Url_View"]?default(""),title,source,now)}
</#macro>

