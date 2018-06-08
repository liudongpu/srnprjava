
<@m_site_common_header nav="" title="搜索结果:"+pageinfo.getWebSet()["Url_Option"] />


<div class="layout_main website_center">

	<div class="layout_height8"></div>

		<div class="search_body">
		<#assign  pageSearchNav=pageexec.upPageNavQuery("info_good",""," (name like :name or code like :name) and file_url!='' ","-time","name","%"+pageinfo.getWebSet()["Url_Option"]+"%" )  >
					<div><h3>搜索结果</h3></div>
			<div class="search_table">
				<table class="table table-bordered  table-hover">
					<thead>
						<tr>
							<th style="width:10%;">拍品编号</th>
							<th>拍品名称</th>
							<th style="width:30%;">拍品图片</th>
							<th style="width:10%;">拍品链接</th>
						</tr>
					</thead>
					<tbody>
					
					
					<#list pageSearchNav.getPageData() as el> 
						<tr>
							<td>${el["code"]}</td>
							<td>${el["name"]}</td>
							<td><img class="b_corner"
						src="${el["file_url"]}" /></td>
							<td><a href="good-good-${el["uid"]}">查看</a></td>
						</tr>
					</#list>
					</tbody>
				</table>
			</div>
			
			<div class="index_pagenav">
				<@m_site_common_site_nav pageSearchNav />
				</div>
			
		</div>
	<script>
	$(window).ready(function() {
	
		$('#site_common_search_box').show().val('${pageinfo.getWebSet()["Url_Option"]}');
	
	});
	</script>

		
</div>

<@m_site_common_footer />
</body>