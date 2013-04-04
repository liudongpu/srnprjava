package com.srnpr.zcom.init;

import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.*;

public class InitJunit implements IBaseInit {

	public void Init() {
		
	
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
	}
	
	
	
	
	

}
