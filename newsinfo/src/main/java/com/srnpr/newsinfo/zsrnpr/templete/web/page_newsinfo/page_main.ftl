
<@m_site_common_header nav="main"  />


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
                                controlNavThumbs : false,
                                
					        	pauseTime:5000
                            });
                        });
                    </script>

                </div>
                
                <@m_html_addjs [base_zero+"lib/jquery/jquery.jfade.js"] />
                
                <div class="index_banner">
                    <div class="index_banner_item">
                        <a href="/newsinfo/notice-list">
                        <img src="${base_zero}themes/website/images/index_banner_1.jpg"/>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                          <a href="/newsinfo/auction-list">
                       <img src="${base_zero}themes/website/images/index_banner_2.jpg"/>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                          <a href="/newsinfo/book-list">
                        <img src="${base_zero}themes/website/images/index_banner_3.jpg"/>
                        </a>
                    </div>
                    <div class="index_banner_split"></div>
                    <div class="index_banner_item">
                         <a href="/newsinfo/people-list">
                        <img src="${base_zero}themes/website/images/index_banner_4.jpg"/>
                        </a>
                    </div>
                </div>
                
                 <script>
                 $(window).load(function() {
                 $('.index_banner .index_banner_item').jfade({
                	 start_opacity: "1",
                	 high_opacity: "1",
                	 low_opacity: ".4",
                	 timing: "500"
                	 });
                 });

                 </script>
            </div>
            
            <@m_site_common_piclist />
            
            
            
        </div>

<@m_site_common_footer />
</body>