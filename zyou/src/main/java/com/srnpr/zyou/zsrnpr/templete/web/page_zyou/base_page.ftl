<!DOCTYPE html>
<html>
<head>
<#assign pageconfig=WebPage["PageConfig"]>
<#assign pageinfo=WebPage["PageInfo"]>
<#assign pageexec=WebPage["PageExec"]>

<#assign base_url=pageexec.upConfigValue("zweb.url_home")>


<#include "../lib/lib_html.ftl" />
<#include "../lib/lib_page.ftl" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title></title> 

	<@m_html_addcss pageconfig.getSrcCss() />
	<@m_html_addjs pageconfig.getSrcJs() />


	<@m_html_addscript "zen.i({baseurl:'"+base_url+"'});" />
	

</head> 




<#if (pageinfo.getWebSet()["Url_Show"]=="")>

	<#include "page_main.ftl" />
<#elseif (pageinfo.getWebSet()["Url_Show"]=="y")>
	<#include "page_y.ftl" />
<#elseif (pageinfo.getWebSet()["Url_Show"]=="ah")>
	<#include "page_ah.ftl" />
<#else>
	<#include "page_iframe.ftl" />

</#if>



</html>
