



<form id="page_form" class="form-horizontal"  action="/zadmin/zcom/put-aa" method="post">

 <legend>新增</legend>


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




