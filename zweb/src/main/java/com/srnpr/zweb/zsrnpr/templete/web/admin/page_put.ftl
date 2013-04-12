



<form class="form-horizontal">

 <legend>Legend</legend>


<#list WebPage["DataTable"] as e_list>

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



