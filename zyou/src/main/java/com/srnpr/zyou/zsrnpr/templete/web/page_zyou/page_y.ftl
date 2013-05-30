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
					<li class="active"><a href="/" target="_blank">网站首页</a></li>
					<li><a href="${base_url}zyou/chart-system_table">系统设置</a></li>
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
			<div class="well sidebar-nav" id="page_main_menu">
				<ul class="nav nav-list">
					 <#list pageexec.upDataOrder("y_menu","code","left(code,6)='413001'") as e_list>
					 	<#if (e_list["code"]?length==9)>
					 	
					 	<li class="nav-header">${e_list["name"]}</li>
					 	<#elseif (e_list["code"]?length==12) > 
					<li><a href="${base_url}zyou-y/${e_list["link_url"]}">${e_list["name"]}</a></li>
						</#if>
					 	
					 </#list>
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