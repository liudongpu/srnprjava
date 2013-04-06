

<#macro m_html_addjs p_list >
	<#list p_list as e>
	<script type="text/javascript" src="${e}"></script>
	</#list>
</#macro>

<#macro m_html_addcss p_list >
    <#list p_list as e>
	<link type="text/css" href="${e}" rel="stylesheet">
	</#list>
</#macro>
