
<@m_site_common_header nav="people" />


	<div class="layout_main website_center">
	
	<#if (pageinfo.getWebSet()["Url_Option"]??&&pageinfo.getWebSet()["Url_Option"]!="")>
		<div class="b_sitenav"><@m_site_common_breadcrumb ["名家论道","people-list",pageexec.upDataOne("you_class","code",pageinfo.getWebSet()["Url_Option"])["name"],""] /></div>
	</#if>
	
		<div class="people_body">
			<div class="people_type">
				<a href="people-list-30320001"><div class="c_item c_one"></div></a>
				<a href="people-list-30320002"><div class="c_item c_two"></div></a>
				<a href="people-list-30320003"><div class="c_item c_three"></div></a>
				<a href="people-list-30320004"><div class="c_item c_four"></div></a>
			
			</div>
			<div class="people_word">
			按姓氏首字母:
			<#list pageexec.upData("you_class","parent_code","3036")	as el>
			<a <#if (pageinfo.getWebSet()["Url_Param"]?default("")==el["code"])> class="c_active" </#if>  href="people-list-${pageinfo.getWebSet()["Url_Option"]?default("")}-${el["code"]}">${el["name"]}</a>
			</#list>
			
			</div>
			<div class="people_list">
				<#if (pageinfo.getWebSet()["Url_Option"]?default("")!=""&&pageinfo.getWebSet()["Url_Param"]?default("")!="")>
				<@m_page_people_list  pageexec.upData("info_people","type_cid",pageinfo.getWebSet()["Url_Option"],"first_cid",pageinfo.getWebSet()["Url_Param"]) />
				<#elseif (pageinfo.getWebSet()["Url_Option"]??&&pageinfo.getWebSet()["Url_Option"]!="")>
				<@m_page_people_list  pageexec.upData("info_people","type_cid",pageinfo.getWebSet()["Url_Option"]) />
				<#elseif (pageinfo.getWebSet()["Url_Param"]?default("")!="")>
				<@m_page_people_list  pageexec.upData("info_people","first_cid",pageinfo.getWebSet()["Url_Param"]) />
				<#else>
			
				<@m_page_people_list  pageexec.upData("info_people") />
				</#if>
				<div class="clearfix"></div>
				
			</div>
			
		
		</div>

		
	</div>


<#macro m_page_people_list page_people_list>

			<#list page_people_list	as el>
				<a class="c_item b_corner" href="product-view-${el["uid"]}" >
				<img class="b_corner" src="${pageexec.upImg(el["file_url"],250)}"/>
				<h4>${el["name"]}</h4>
				</a>
				
				</#list>

</#macro>



<@m_site_common_footer />
</body>