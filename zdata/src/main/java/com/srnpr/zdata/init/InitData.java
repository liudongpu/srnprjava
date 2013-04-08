package com.srnpr.zdata.init;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zdata.manager.DataBaseManager;

public class InitData extends BaseClass implements IBaseInit {

	public synchronized void Init() {

		BDebug(967912002, this.getClass().getName());

		
		DataBaseManager dBaseManager=new DataBaseManager();
		
		dBaseManager.Init();
		
		
		
		
		

	}

}
