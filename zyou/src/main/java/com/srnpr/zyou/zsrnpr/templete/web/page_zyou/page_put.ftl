



<form id="page_form" class="form-horizontal"  action="/zadmin/zcom/put-aa">

 <legend>修改</legend>


<#list pageinfo.getPageData() as e_list>

 <@m_page_input e_list />

</#list>
 

  <div class="control-group">
    <div class="controls">
      <label class="checkbox">
        <input type="checkbox"> Remember me
      </label>
      <button type="button" class="btn" onclick="testsubmit()">Sign in</button>
    </div>
  </div>
</form>



<script>





function testsubmit()
{
	  
	
	
	$('#page_form').ajaxSubmit(function(data){

                alert(data);

            });

};
	 
	 
	 
	 




</script>
