<#macro m_page_table  p_list>
	
	<table  class="table table-bordered">
  <caption>...</caption>
  <thead>
  
  
  
    <tr>
        <#list p_list[0]?keys as e>
      	 <th>${e}</th>
      </#list>
    </tr>
  </thead>
  <tbody>
  
  <#list p_list as e_list>
	<tr>
      <#list e_list?keys as e>
      	<td>${e_list[e]}</td>
      </#list>
    </tr>
	</#list>
  </tbody>
</table>
</#macro>