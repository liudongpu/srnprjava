











<#macro m_page_table  p_list>
	<table  class="table">
  <thead>
    <tr>
        <#list p_list[0]?keys as e>
      	 <th>${e}</th>
      </#list>
    </tr>
  </thead>
  <tbody>
  <#list p_list as e_list>
	<tr>
      <#list e_list?keys as e>
      	<td>${e_list[e]}</td>
      </#list>
      <td> <a href="put-ff-${e_list["zid"]}">edit</a> </td>
    </tr>
	</#list>
  </tbody>
</table>
</#macro>

<#macro m_page_input  p_info>
<div class="control-group">
    <label class="control-label" for="${p_info.getName()}">${p_info.getName()}</label>
    <div class="controls">
      <input type="text" id="${p_info.getName()}" name="${p_info.getName()}" value="${p_info.getValue()}"/>
    </div>
  </div>

</#macro>





<#--   定义输出自动判断   -->
<#macro m_page_autorun p_info_auto>

<#local m_page_autorun_id=p_info_auto.getTarget() />
<#if m_page_autorun_id=="416102001">
	<@m_page_input p_info_auto />
<#elseif m_page_autorun_id=="">
	<@m_page_input p_info_auto />
<#else>
	<@m_page_input p_info_auto />
</#if>
</#macro>





