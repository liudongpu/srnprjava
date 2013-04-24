

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
      	
      	<#-- 如果操作列  -->
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
    <label class="control-label" for="${p_info.getColumnName()?default('')}">${p_info.getFieldName()?default('')}</label>
    <div class="controls">
      <input type="text" id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}" value="${p_info.getFieldValue()?default('')}"  />
    </div>
  </div>

</#macro>

<#macro m_page_textarea  p_info>
<div class="control-group">
    <label class="control-label" for="${p_info.getColumnName()?default('')}">${p_info.getFieldName()?default('')}</label>
    <div class="controls">
      <textarea id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}" rows="3"  >${p_info.getFieldValue()?default('')}</textarea>
    </div>
  </div>

</#macro>

<#macro m_page_hidden  p_info>
      <input type="hidden" id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}" value="${p_info.getFieldValue()?default('')}"  />
</#macro>


<#macro m_page_upload  p_info>
      
      
      <div class="control-group">
    <label class="control-label" for="${p_info.getColumnName()?default('')}">${p_info.getFieldName()?default('')}</label>
    <div class="controls">
      <input type="hidden" id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}" value="${p_info.getFieldValue()?default('')}"  />
      <iframe src="${base_url}zyou-iframe/upload-images_upload" frameborder="0" height="30px"></iframe>
      
    </div>
  </div>
      
      
</#macro>



<#macro m_page_select  p_info>

<div class="control-group">
    <label class="control-label" for="${p_info.getColumnName()?default('')}">${p_info.getFieldName()?default('')}</label>
    <div class="controls">
    <select id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}">
    <#local m_page_select_data=pageexec.upDataFromFieldParams(p_info.getSourceparameter()) >
    	 <#list m_page_select_data as e_list>
    	 	<option value="${e_list["source_value"]?default('')}"  <#if (p_info.getFieldValue()==e_list["source_value"]) >selected="selected" </#if>    >${e_list['source_text']?default('')}</option>
    	 	
    	 </#list>
    
    </select>
      
    </div>
  </div>



</#macro>


<#macro m_page_editor  p_info>

<@m_html_addjs [pageexec.upConfigValue("zweb.lib_editor_url")] />


<@m_html_addscript "zen.r('zen.page.submit.beforesubmit',function(){ zen.page.editorReload()});" />

<div class="control-group">
    <label class="control-label" for="${p_info.getColumnName()?default('')}">${p_info.getFieldName()?default('')}</label>
    <div class="controls">
      <textarea class="ckeditor" style="display:none;" id="${p_info.getColumnName()?default('')}" name="${p_info.getColumnName()?default('')}" rows="3"  >${p_info.getFieldValue()?default('')}</textarea>
    </div>
  </div>

</#macro>







<#macro m_page_href  p_name  p_href >
<a  href="${p_href!}" target=“_blank”>${p_name!}</a>
</#macro>


<#macro m_page_option  p_name  p_href  p_icon>
<a class="btn  btn-small" href="${p_href!}" target=“_blank”><i class="${p_icon!}"></i>&nbsp;&nbsp;${p_name!}</a>
</#macro>


<#macro m_page_option_click  p_name  p_href  p_icon>
<a class="btn  btn-small" onclick="${p_href!}" ><i class="${p_icon!}"></i>&nbsp;&nbsp;${p_name!}</a>
</#macro>




<#--   定义输出自动判断   -->
<#macro m_page_autorun p_info_auto>

<#local m_page_autorun_id=p_info_auto.getDidFieldType() />

<#if m_page_autorun_id==416108001>
	<@m_page_input p_info_auto />
<#elseif m_page_autorun_id==416108119>
	<@m_page_select p_info_auto />
	<#elseif m_page_autorun_id==416108108>
	<@m_page_hidden p_info_auto />
	<#elseif m_page_autorun_id==416108120>
	<@m_page_textarea p_info_auto />
	<#elseif m_page_autorun_id==416108105>
	<@m_page_editor p_info_auto />
	<#elseif m_page_autorun_id==416108121>
	<@m_page_upload p_info_auto />
<#else>
	<@m_page_input p_info_auto />
</#if>
</#macro>




<#--   定义输出自动判断   -->
<#macro m_lib_page_auto_options p_info_auto>


	<#local m_page_autorun_id=p_info_auto.getDidOptionType() />
	<#if m_page_autorun_id==415101002>
		 <@m_page_option p_name=p_info_auto.getName() p_href=p_info_auto.getParams()?default('')  p_icon="icon-pencil" />
	<#elseif m_page_autorun_id==415101019>
		 <@m_page_option_click  p_name=p_info_auto.getName() p_href="zen.page.submit(this,'"+p_info_auto.getParams()?default('')+"')"  p_icon="icon-ok" />
	<#elseif m_page_autorun_id==415101006>
		 <@m_page_option_click  p_name=p_info_auto.getName() p_href="zen.page.call('"+p_info_auto.getParams()?default('')+"')"  p_icon="icon-ok" />
	
	<#else>
		<@m_page_option p_name=p_info_auto.getName() p_href=p_info_auto.getParams()?default('')  p_icon="icon-pencil" />
	</#if>

</#macro>















