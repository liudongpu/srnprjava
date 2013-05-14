
 <legend>列表
 <div class="btn-group pull-right">
 
    <#list pageinfo.getPageOptions() as e_list>
	 <@m_lib_page_auto_options e_list />
	</#list>
 
  </div></legend>

  





<@m_page_table pageinfo.getPageData() />



<@m_lib_page_page_pagination pageinfo.getPagePagination() />
