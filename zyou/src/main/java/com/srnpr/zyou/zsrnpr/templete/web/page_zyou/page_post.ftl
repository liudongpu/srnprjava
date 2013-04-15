







<form class="form-horizontal">

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
     
      <button type="submit" class="btn">提交</button>
    </div>
  </div>
</form>



