package com.srnpr.zcom.init;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.i.IBaseInit;

public class InitCom implements IBaseInit {

	public void Init() {
		
		ComFunction.OutLog(this.getClass().getName());
		

	}

}
