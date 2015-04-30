<!DOCTYPE html>
<html>
<head>
<#assign pageconfig=WebPage["PageConfig"]>
<#assign pageinfo=WebPage["PageInfo"]>
<#assign pageexec=WebPage["PageExec"]>
<#include "../lib/lib_html.ftl" />
<#include "../lib/lib_page.ftl" />

<#include "site_common.ftl" />


<#assign base_url=pageexec.upConfigValue("zweb.url_home")>
<#assign base_zero=bd_url+"/zzero/web/">

<#assign base_pageurl=pageinfo.getPageInclude()?default('main') >
<#if (base_pageurl=="main")>
<script type="text/javascript">
	var browser={  
    	versions:function(){   
           var u = navigator.userAgent;   
           return {//移动终端浏览器版本信息   
                trident: u.indexOf('Trident') > -1, //IE内核  
                presto: u.indexOf('Presto') > -1, //opera内核  
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核  
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核  
                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端  
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端  
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器  
                iPhone: u.indexOf('iPhone') > -1 , //是否为iPhone或者QQHD浏览器  
                iPad: u.indexOf('iPad') > -1, //是否iPad    
                webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部  
            };  
         }(),  
         language:(navigator.browserLanguage || navigator.language).toLowerCase() 
	}   
  	if(browser.versions.mobile || browser.versions.ios || browser.versions.android ||   
   		 browser.versions.iPhone || browser.versions.iPad){        
        	window.location = "http://m.boguanpaimai.com/newsinfo/mindex-list";
  	}  
</script>
</#if>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 


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
