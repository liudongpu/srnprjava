

<@m_site_common_header />

	<div class="y_center">
		<div class="yinfo_list">

			<div class="yinfo_list_nav">
				<a href="/">回到首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<a href="/">列表页</a>
			</div>
			<div class="yinfo_list_query">

				<div class="c_item">
					<span>所在区域：</span> <a href="" class="c_active">不限</a><a href="">北京</a>
				</div>
				<div class="c_item">
					<span>老人情况：</span> <a href="" class="c_active">不限</a><a href="">北京</a>
				</div>
				<div class="c_item">
					<span>价格范围：</span> <a href="" class="c_active">不限</a><a href="">北京</a>
				</div>
				<div class="c_order">
					<span>排序方式：</span><a href="" class="c_active">默认</a><a href="">认证</a>
				</div>
			</div>
			<div class="b_h20"></div>

			<div>
			
				<#assign  pageSearchNav=pageexec.upPageNav("y_info","","-zid")  >
				

				<div class="yinfo_list_left">
					<#list pageSearchNav.getPageData() as el> 
					<div class="c_item">
							<@m_site_common_site_list el "list"/>
					</div>
					</#list>
					
					
					<div class="clearfix"></div>
					<div class="index_pagenav">
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
