package com.srnpr.zweb.init;

import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;

public class InitWeb implements IBaseInit {

	public synchronized void Init() {

		ComFunction.OutLog(this.getClass().getName());
		

	}
	
	
	
	void InitTemplete()
	{
		Resource[] resources=IoHelper.GetResource("classpath*:com/srnpr/*/zsrnpr/webtemplete/*.ftl");
		
		
		
	}
	

}
