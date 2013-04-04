package com.srnpr.zcom.init;

import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.InitRoot;

public class InitJunit implements IBaseInit {

	public void Init() {
		
		
	
		
		CommonConst.SetRunType(ERunType.junit);
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
		
		
	}

}
