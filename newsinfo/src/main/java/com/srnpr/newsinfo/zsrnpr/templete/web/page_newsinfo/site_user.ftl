

<#assign site_user_cookie="" >

<#assign request=pageexec.upRequest()>

<#assign cookies = request.getCookies()>
<#list cookies as cookie>
<#if cookie.name = "bgpm_user_cookieid">

	<#assign site_user_cookie=cookie.value >

</#if>
</#list>

${site_user_cookie}