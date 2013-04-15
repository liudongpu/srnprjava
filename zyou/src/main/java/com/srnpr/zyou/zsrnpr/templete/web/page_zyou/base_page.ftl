<#--<#compress>-->
<!DOCTYPE html>
<html>
<head>
<#assign pageconfig=WebPage["WebConfig"]>
<#assign pageinfo=WebPage["PageInfo"]>

<#include "../lib/lib_html.ftl" />
<#include "../lib/lib_page.ftl" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title></title> 

	<@m_html_addcss pageconfig.getSrcCss() />
	<@m_html_addjs pageconfig.getSrcJs() />

</head> 
<body>
<#include "page_main.ftl" />
</body> 
</html>

<#--</#compress>-->