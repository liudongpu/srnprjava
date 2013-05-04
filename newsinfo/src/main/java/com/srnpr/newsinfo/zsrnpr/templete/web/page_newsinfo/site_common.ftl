
<#macro m_site_common_header nav="">
	<div class="layout_header">
            <div class="header_top">
                <div class="website_center">
                    <div class="lay_header_position">
                        <div class="header_logo"></div>
                        <div id="header_user" class="header_user">
							<a href="${base_url}newsinfo/login-login">登&nbsp;陆</a>&nbsp;|&nbsp;<a href="${base_url}newsinfo/reg-reg">注&nbsp;册</a>
						</div>
                    </div>
                    <div class="lay_header_nav">
                        <div class="header_nav_left">
                            <ul>
                                <li><a <#if (nav=="main")> class="active"</#if> href="/">首 页</a></li>
                                <li><a <#if (nav=="info")> class="active"</#if> href="/newsinfo/info-list">博观资讯</a></li>
                                <li><a <#if (nav=="notice")> class="active"</#if> href="/newsinfo/notice-list">博观公告</a></li>
                                <li><a <#if (nav=="auction")> class="active"</#if> href="/newsinfo/auction-list">预展及成交 </a></li>
                                <li><a <#if (nav=="book")> class="active"</#if> href="/newsinfo/book-list"> 博观书房 </a></li>
                                <li><a <#if (nav=="club")> class="active"</#if> href="/newsinfo/club-list">博观俱乐部 </a></li>
                                <li><a <#if (nav=="people")> class="active"</#if> href="/newsinfo/people-list">名家论道</a></li>
                            </ul>
                        </div>
                        <div class="header_nav_right">
                            <div class="header_nav_search"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</#macro>

<#macro m_site_common_footer>
<div class="layout_footer"></div>
</#macro>




<#macro m_site_common_piclist>

 		<div class="index_picnav"></div>
            <div class="index_piclist">
                <div class="index_piclist_position">
                    <div id="index_piclist_box" class="index_piclist_box">
                        <ul>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f829898.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>

                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f8af7f6.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20130417/b_516eb6f93f3a8.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47a28086.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47b671a6.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47c7a89f.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47d2691b.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47dafadf.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c47e4ca51.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                            <li>
                                <a href=""> <img src="http://www.boguanpaimai.com/Attach/pic/20121221/b_50d3c482d4f0a.jpg" alt=""> <span>我滚动，我快乐，我无趣，我来也</span> </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="index_piclist_nav" class="index_piclist_nav">
                    <ul>

                        <li class="c_nav" onclick="zen.site.picnav('p')">
                            <span class="c_prev"></span>
                        </li>
                        <li class="c_nav"  onclick="zen.site.picnav('n')">
                            <span class="c_next"></span>
                        </li>

                    </ul>

                </div>
                <script type="text/javascript">
                    $(window).load(function() {
                        zen.site.picnav();
                    });
                </script>
            </div>

</#macro>



<#macro m_site_common_indexmain>



</#macro>
