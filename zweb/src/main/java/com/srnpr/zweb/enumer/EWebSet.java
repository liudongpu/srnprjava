package com.srnpr.zweb.enumer;

public enum EWebSet {


	
	 /**
	 * @fields Url_Path  Url路径  一般指向项目名称
	 */
		
	Url_Path,
	
	
	
	 /**
	 * @fields Url_Target  Url第一参数  一般设定为操作类型
	 */
		
	Url_Target,
	
	
	
	 /**
	 * @fields Url_View Url第二参数  一般设定为操作视图
	 */
		
	Url_View,
	
	
	 /**
	 * @fields Url_Option Url第三参数  一般设定为操作指令唯一编码
	 */
		
	Url_Option,
	
	 /**
	 * @fields Url_Param  Url第四参数  如果修改时设置为唯一值 可为空
	 */
		
	Url_Param,


	Request_Method


}
