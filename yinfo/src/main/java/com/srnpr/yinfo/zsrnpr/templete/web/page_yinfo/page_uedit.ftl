



<form id="page_form" class="form-horizontal"   action="/zadmin/zweb/" method="post">

 <legend>修改
 <div class="btn-group pull-right">
 
    <#list pageinfo.getPageOptions() as e_list>
	 <@m_lib_page_auto_options e_list />
	</#list>
 
  </div></legend>


<#list pageinfo.getPageData() as e_list>

 <@m_page_autorun e_list />

</#list>

</form>

