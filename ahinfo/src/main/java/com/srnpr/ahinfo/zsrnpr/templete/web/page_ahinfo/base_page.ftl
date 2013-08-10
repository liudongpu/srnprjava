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


	<@m_html_addcss [base_zero+"lib/bootstrap/css/bootstrap.ah.min.css"] />
	<@m_html_addjs pageconfig.getSrcJs() />
	<@m_html_addjs [base_zero+"zen/zen_ahinfo.js"] />
	<@m_html_addjs [base_zero+"lib/jquery/jquery-site.js"] />
	<@m_html_addjs [base_zero+"lib/jquery/jquery.srnpr.js"] />
	<@m_html_addcss [base_zero+"themes/webahinfo/css/ahinfo.css"] />

	<@m_html_addscript "zen.i({baseurl:'"+base_url+"'});" />

	

<#include "page_"+pageinfo.getPageInclude()?default('main')+".ftl" />










</html>
