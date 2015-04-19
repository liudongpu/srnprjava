<body class="webbase_body">
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="brand" href="#">博观拍卖后台管理系统</a>
			<div class="nav-collapse collapse">
				<p class="navbar-text pull-right">
					欢迎您：<span id="page_main_user_name"></span>，<a onclick="zen.page.logout()">退出系统</a>
				</p>
				<ul class="nav">
				
					<li><a onclick="changeNav(1)"  class="navbar-link">网站后台</a></li>
					<li><a onclick="changeNav(2)"  class="navbarlink">手机后台</a></li>
				
				
					<li class="active"><a href="/" class="navbar-link"  target="_blank">网站首页</a></li>
					
					<li><a onclick="zen.page.call('${base_url}zyou/func-system_table-97b1bcc3a90111e2bb7900241d8adc62-func_do=refreshcache')" class="navbar-link">刷新缓存</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

<div class="navbar  navbar-fixed-bottom">
	<div class="navbar-inner">
		<div class="container-fluid">Copy Right @ All </div>
	</div>
</div>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span2">
			<div class="well sidebar-nav" style="display:none" id="page_main_menu">
				<ul class="nav nav-list">
					<li class="nav-header">广告设置</li>
					<li><a href="${base_url}zyou/chart-v_info_adv">首页轮播广告</a></li>
					<li><a href="${base_url}zyou/chart-v_info_static_books--system_cid=30330003">固定位置广告</a></li>
					<li class="nav-header">内容管理</li>
					<li><a href="${base_url}zyou/chart-v_info_news">博观资讯</a></li>
					<li><a href="${base_url}zyou/chart-v_info_notice">博观公告</a></li>
					<li><a href="${base_url}zyou/chart-v_info_people">名家论道</a></li>
					<li><a href="${base_url}zyou/chart-v_info_images">图片集</a></li>
					<li><a href="${base_url}zyou/chart-v_info_book">博观书房</a></li>
					<li class="nav-header">俱乐部管理</li>
					<li><a href="${base_url}zyou/chart-v_info_video">俱乐部课程</a></li>
					<li><a href="${base_url}zyou/chart-v_info_notify">俱乐部通知</a></li>
					<li class="nav-header">拍卖会管理</li>
					<li><a href="${base_url}zyou/chart-v_info_auction">拍卖会列表</a></li>
					<li><a href="${base_url}zyou/chart-v_info_special">专场列表</a></li>
					<li class="nav-header">静态内容维护</li>
					<li><a href="${base_url}zyou/chart-v_info_static_nav--system_cid=30330001">网站底部导航</a></li>
					<li><a href="${base_url}zyou/chart-v_info_static_club--system_cid=30330002">俱乐部信息</a></li>
					<li><a href="${base_url}zyou/chart-v_you_user">管理员管理</a></li>
					<li class="nav-header">会员管理</li>
					<li><a href="${base_url}zyou/chart-v_user_info">会员列表</a></li>
					<li><a href="${base_url}zyou/chart-v_user_comment">评论列表</a></li>
				</ul>
			</div>
			
			<div class="well sidebar-nav" style="display:none" id="page_main_menu_2">
				<ul class="nav nav-list">
					<li class="nav-header">用户相关</li>
					<li><a href="${base_url}zyou/chart-v_user_bid">竞投办理</a></li>
					<li><a href="${base_url}zyou/chart-v_user_ent">委托竞投</a></li>
					<li><a href="${base_url}zyou/chart-v_user_send">在线送拍</a></li>
					<li class="nav-header">内容相关</li>
					<li><a href="${base_url}zyou/chart-v_info_static_nav--system_cid=30330004">静态内容</a></li>
					
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
				changeNav(1);
			}
			
		});
		$('#page_main_menu_2 li a').each(
		function(n,el)
		{
			//alert(el);
			
			if($(el).attr('href').indexOf(sTarget)>-1)
			{
				$(el).parent().addClass('active');
				changeNav(2);
			}
			
		}
	
		);
	
}

);


function changeNav(iType)
{
	if(iType==1)
	{
		$('#page_main_menu').show();
		$('#page_main_menu_2').hide();
	}
	else
	{
		$('#page_main_menu').hide();
		$('#page_main_menu_2').show();
	}
	

}



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