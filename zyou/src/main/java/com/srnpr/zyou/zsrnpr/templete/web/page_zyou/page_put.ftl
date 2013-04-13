



<form class="form-horizontal">

 <legend>修改</legend>


<#list pageinfo.getPageData() as e_list>

 <@m_page_input e_list />

</#list>
 

  <div class="control-group">
    <div class="controls">
      <label class="checkbox">
        <input type="checkbox"> Remember me
      </label>
      <button type="submit" class="btn">Sign in</button>
    </div>
  </div>
</form>



