







<form class="form-horizontal">

 <legend>新增</legend>


<#list pageinfo.getPageData() as e_list>

 <@m_page_input e_list />

</#list>
 

  <div class="control-group">
    <div class="controls">
     
      <button type="submit" class="btn">提交</button>
    </div>
  </div>
</form>



