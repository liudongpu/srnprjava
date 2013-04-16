







<form id="page_form" class="form-horizontal"   action="/zadmin/zweb/post-system_table-aa-1" method="post">

 <legend>系统所有表
 <div class="btn-group pull-right">
 
    <#list pageinfo.getPageOptions() as e_list>
	 <@m_lib_page_auto_options e_list />
	</#list>
 
  </div></legend>


<#list pageinfo.getPageData() as e_list>

 <@m_page_input e_list />

</#list>
 

  <div class="control-group">
    <div class="controls">
     
      <button type="button" class="btn" onclick="zen.page.submit('page_form')">提交</button>
    </div>
  </div>
</form>



