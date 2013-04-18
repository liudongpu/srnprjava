

<#macro m_page_table  p_list>

<#if p_list?has_content>



	<table  class="table">
  <thead>
    <tr>
        <#list p_list[0] as e>
      	 <th>${e}</th>
      </#list>
    </tr>
  </thead>
  <tbody>
  <#list p_list as e_list>
  
  
  	<#if (e_list_index>0)>
	<tr>
      <#list e_list as e>
      	<td>
      	<#if (e?length>7)&&(e?substring(0,7)=="@415101")>
      		<#local es=e?split("@")>
      		<#-- <#if (es[1]=="415101012") > -->
      			<@m_page_href es[2] es[3] />
      		<#--</#if> -->
      		
			
      	<#else>
      	${e}
      	</#if>
      	</td>
      </#list>
    </tr>
    
    </#if>
	</#list>
  </tbody>
</table>
<#else>
no result
</#if>

</#macro>

<#macro m_page_input  p_info>
<div class="control-group">
    <label class="control-label" for="${p_info.getName()?default('')}">${p_info.getName()?default('')}</label>
    <div class="controls">
      <input type="text" id="${p_info.getName()?default('')}" name="${p_info.getName()?default('')}" value="${p_info.getValue()?default('')}"/>
    </div>
  </div>

</#macro>



<#macro m_page_href  p_name  p_href >
<a  href="${p_href!}" target=“_blank”>${p_name!}</a>
</#macro>


<#macro m_page_option  p_name  p_href  p_icon>
<a class="btn  btn-small" href="${p_href!}" target=“_blank”><i class="${p_icon!}"></i>&nbsp;&nbsp;${p_name!}</a>
</#macro>




<#--   定义输出自动判断   -->
<#macro m_page_autorun p_info_auto>

<#local m_page_autorun_id=p_info_auto.getTarget() />
<#if m_page_autorun_id=="416108001">
	<@m_page_input p_info_auto />
<#elseif m_page_autorun_id=="">
	<@m_page_input p_info_auto />
<#else>
	<@m_page_input p_info_auto />
</#if>
</#macro>




<#--   定义输出自动判断   -->
<#macro m_lib_page_auto_options p_info_auto>


	<#local m_page_autorun_id=p_info_auto.getDidOptionType() />
	<#if m_page_autorun_id==415101002>
		 <@m_page_option p_name=p_info_auto.getName() p_href=p_info_auto.getParams()?default('')  p_icon="icon-pencil" />
	<#elseif m_page_autorun_id==0>
		
	<#else>
		<@m_page_option p_name=p_info_auto.getName() p_href=p_info_auto.getParams()?default('')  p_icon="icon-pencil" />
	</#if>

</#macro>















