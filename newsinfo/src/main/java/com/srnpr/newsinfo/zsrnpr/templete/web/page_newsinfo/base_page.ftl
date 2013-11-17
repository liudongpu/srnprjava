<!DOCTYPE html>
<html>
<head>
<#assign pageconfig=WebPage["PageConfig"]>
<#assign pageinfo=WebPage["PageInfo"]>
<#assign pageexec=WebPage["PageExec"]>

<#assign base_url=pageexec.upConfigValue("zweb.url_home")>
<#assign base_zero=pageexec.upConfigValue("zweb.url_home")+"zzero/web/">

<#include "../lib/lib_html.ftl" />
<#include "../lib/lib_page.ftl" />

<#include "site_common.ftl" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<#assign bd_url="http://bcs.duapp.com/srnprresources">
	<link type="text/css" href="${bd_url}/zzero/web/themes/website/sitecss/base.css" rel="stylesheet">
	<link type="text/css" href="${bd_url}/zzero/web/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="${bd_url}/zzero/web/lib/jquery/jquery-last.min.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/lib/jquery/jquery-pluging.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/lib/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/zen/zen.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/zen/zen_page.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/zen/zen_site.js"></script>
	<script type="text/javascript" src="${bd_url}/zzero/web/lib/jquery/jquery-site.js"></script>


	<@m_html_addscript "zen.i({baseurl:'"+base_url+"'});" />

	

<#include "page_"+pageinfo.getPageInclude()?default('main')+".ftl" />










</html>
