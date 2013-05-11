<body class="website_body">

<@m_site_common_header nav="main" />


	<@m_html_addcss [base_zero+"lib/jquery/jquery-site.css"] />

	<div class="layout_main website_center">
            <div class="index_body">
                <div class="index_adv">
                    <div class="slider-wrapper theme-default">
                        <div id="index_adv_slider" class="nivoSlider">


							 <#list pageexec.upData("info_adv") as el>
							 <a href="${el["link_url"]}">
								  <img
	                            src="${el["file_url"]}"
	                            alt="" title="#htmlcaption_${el_index}" />
							 </a>
							 </#list>
                        </div>
                        
                         <#list pageexec.upData("info_adv") as el>
	                         <div id="htmlcaption_${el_index}" class="nivo-html-caption  index_adv_caption">
	                            <a class="nivo-prevNav"><div class="index_adv_caption_left"></div></a>
	                            <div class="index_adv_caption_center">
	                                <a href="">${el["title"]}</a>
	                            </div>
	                            <a class="nivo-nextNav"><div class="index_adv_caption_right"></div></a>
	
	                        </div>
                         
                         
                        </#list>
                        
                       
                    </div>
                    <script>
                        // Can also be used with $(document).ready()
                        $(window).load(function() {
                            $('#index_adv_slider').nivoSlider({

                                controlNav : false,
                                controlNavThumbs : false
                            });
                        });
                    </script>

                </div>
                <div class="index_banner">
                    <div class="index_banner_item">
                        <a href="${base_url}newsinfo/notice-list">
                        <div class="index_banner_1"></div>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                          <a href="${base_url}newsinfo/auction-list">
                        <div class="index_banner_2"></div>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                          <a href="${base_url}newsinfo/book-list">
                        <div class="index_banner_3"></div>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                         <a href="${base_url}newsinfo/people-list">
                        <div class="index_banner_4"></div>
                        </a>
                    </div>
                </div>
            </div>
            
            <@m_site_common_piclist />
            
            
            
        </div>

<@m_site_common_footer />
</body>