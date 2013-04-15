



<form id="page_form" class="form-horizontal"  action="/zadmin/zweb/put-aa" method="post">

 <legend>系统所有表
 <div class="btn-group pull-right">
 
    <#list pageinfo.getPageOptions() as e_list>
	 <@m_lib_page_auto_options e_list />
	</#list>
 
  </div></legend>


<#list pageinfo.getPageData() as e_list>
 <@m_page_autorun e_list />
</#list>
 

  <div class="control-group">
    <div class="controls">
      <label class="checkbox">
        <input type="checkbox"> Remember me
      </label>
      <button type="button" class="btn" onclick="zen.page.submit('page_form')">Sign in</button>
    </div>
  </div>
</form>




