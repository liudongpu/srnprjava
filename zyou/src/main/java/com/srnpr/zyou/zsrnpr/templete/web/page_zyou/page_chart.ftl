
 <legend>列表
 <div class="btn-group pull-right">
 
    <#list pageinfo.getPageOptions() as e_list>
	 <@m_lib_page_auto_options e_list />
	</#list>
 
  </div></legend>


<#if  pageinfo.getPageQuery()??>

<form id="page_form" class="form-horizontal" method="post">
	<div style="text-align:center;width:400px;">
	<#list pageinfo.getPageQuery() as p_info_auto>

	 <#if p_info_auto.getDidFieldType()==416108109>
		<@m_page_input p_info_auto />
	<#elseif p_info_auto.getDidFieldType()==416108119>
		<@m_page_select p_info_auto "请选择" />
	</#if>
	 
	</#list>
	
	<@m_page_option_click  p_name="查询" p_href="zen.page.query(this,'')"   p_icon="icon-search" p_class="btn-small" />
	
	</div>
	<hr/>
	
</form>

</#if>
  





<@m_page_table pageinfo.getPageData() />



<@m_lib_page_page_pagination pageinfo.getPagePagination() />
