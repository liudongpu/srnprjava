<body class="webbase_body">
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="brand" href="#">超级后台管理系统</a>
			<div class="nav-collapse collapse">
				<p class="navbar-text pull-right">
					Logged in as <a onclick="zen.page.call('${base_url}zyou/func-system_table-97b1bcc3a90111e2bb7900241d8adc62-func_do=refreshcache')" class="navbar-link">Username</a>
				</p>
				<ul class="nav">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="/manage">系统设置</a></li>
					<li><a href="#contact">文章设置</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

<div class="navbar  navbar-fixed-bottom">
	<div class="navbar-inner">
		<div class="container-fluid">aaa</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span2">
			<div class="well sidebar-nav" id="page_main_menu">
				<ul class="nav nav-list">
					<li class="nav-header">广告设置</li>
					<li><a href="${base_url}zyou/chart-test_view">测试视图</a></li>
					<li><a href="${base_url}zyou/chart-v_you_class">分类设置</a></li>
					<li><a href="${base_url}zyou/chart-v_info_adv">首页轮播广告</a></li>
					<li class="nav-header">内容管理</li>
					<li><a href="${base_url}zyou/chart-v_info_news">博观资讯</a></li>
					<li><a href="${base_url}zyou/chart-v_info_notice">博观公告</a></li>
					<li><a href="${base_url}zyou/chart-v_info_people">名家论道</a></li>
					<li><a href="${base_url}zyou/chart-v_info_images">图片集</a></li>
					<li><a href="${base_url}zyou/chart-v_info_static">静态内容维护</a></li>
					<li><a href="${base_url}zyou/chart-v_info_video">俱乐部课程</a></li>
					<li class="nav-header">拍卖会管理</li>
					<li><a href="${base_url}zyou/chart-v_info_auction">拍卖会列表</a></li>
					<li><a href="${base_url}zyou/chart-v_info_special">专场列表</a></li>
					<li><a href="#">Link</a></li> 
					<li><a href="#">Link</a></li>
					<li class="nav-header">Sidebar</li>
					<li><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
				</ul>
			</div>
			<!--/.well -->
		</div>
		<!--/span-->
		<div class="span10">
			<#include pageinfo.getPageInclude() />		
		</div>
		<!--/span-->
	</div>
	<!--/row-->
	<hr/>
</div>


<script>

$(window).ready(
function()
{
	var sUrl=location.href;
	var sUrlSplit=sUrl.split('/');
	var sTarget=sUrlSplit[sUrlSplit.length-1].split('-')[1];
	
		$('#page_main_menu li a').each(
		function(n,el)
		{
			//alert(el);
			
			if($(el).attr('href').indexOf(sTarget)>-1)
			{
				$(el).parent().addClass('active');
			}
			
		}
	
	);
	
}

);


</script>



<div id="zen_page_model_show" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>提示消息</h3>
  </div>
  <div class="modal-body">
    <p>操作成功!</p>
  </div>
  <div class="modal-footer">
  	
  	 <a href="javascript:history.go(-1)" >返回上一页</a>
    <a href="#" class="btn btn-primary"  data-dismiss="modal"  aria-hidden="true">确认</a>
  </div>
</div>
</body> 