


<#macro m_site_info_listinfo>
				<#list pageexec.upData("info_news") as el> 	 
					<div class="info_item">
						<div class="c_title">
							<h3>${el["title"]}</h3>
						</div>
						<div class="c_time">发表时间：${el["create_time"]} | 文章出处：博观拍卖</div>
						<div class="c_image">
							<img
								src="${el["file_url"]}" />
						</div>
						<div class="c_des">导 语：
							${el["note"]}</div>
						<div class="c_tips">
							<span class="b_icon c_share"></span>分享<span
								class="b_icon c_comment"></span>&nbsp;&nbsp;&nbsp;&nbsp;评论&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">阅读全文〉</a>
						</div>
						<div class="c_split"></div>
					</div>
							 
					</#list>

</#macro>
















<#macro m_site_info_lastinfo>

					<div class="info_sort">
						<div class="c_title">最新文章</div>
						<ul>
							<li><a href="#">艺术品投资周期选择 </a></li>
							<li><a href="#">北京国际珠宝交易中心商铺租赁权拍卖公告</a></li>
							<li><a href="#">2013年春节放假通知 </a></li>
							<li><a href="#">2012年北京博观中国玉雕大师年度作品个人专场拍卖会 </a></li>
							<li><a href="#">第五届“大玩家”——中国玉石雕刻大师作品无底价拍卖会 </a></li>
							<li><a href="#">2012年北京博观中国玉雕大师年度作品个人专场拍卖会 </a></li>
							<li><a href="#">第五届“大玩家”——中国玉石雕刻大师作品无底价拍卖会 </a></li>
							<li><a href="#">北京博观拍卖2012年-春季拍卖会</a></li>
							<li><a href="#">拍卖会延期举办公告 </a></li>
							<li><a href="#">玲珑美玉——当代玉雕精品无底价拍卖会 </a></li>
						</ul>
					</div>


</#macro>

<#macro m_site_info_lastnotice>
				<div class="info_sort">
						<div class="c_title">最近公告</div>
						<ul>
							<li><a href="#">艺术品投资周期选择 </a></li>
							<li><a href="#">北京国际珠宝交易中心商铺租赁权拍卖公告</a></li>
							<li><a href="#">2013年春节放假通知 </a></li>
							<li><a href="#">2012年北京博观中国玉雕大师年度作品个人专场拍卖会 </a></li>
							<li><a href="#">第五届“大玩家”——中国玉石雕刻大师作品无底价拍卖会 </a></li>
							<li><a href="#">2012年北京博观中国玉雕大师年度作品个人专场拍卖会 </a></li>
							<li><a href="#">第五届“大玩家”——中国玉石雕刻大师作品无底价拍卖会 </a></li>
							<li><a href="#">北京博观拍卖2012年-春季拍卖会</a></li>
							<li><a href="#">拍卖会延期举办公告 </a></li>
							<li><a href="#">玲珑美玉——当代玉雕精品无底价拍卖会 </a></li>
						</ul>
					</div>
</#macro>