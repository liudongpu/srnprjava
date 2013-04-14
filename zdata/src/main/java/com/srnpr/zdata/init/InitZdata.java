package com.srnpr.zdata.init;

import com.srnpr.zcom.base.BaseInit;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zdata.manager.DataBaseManager;
import com.srnpr.zdata.manager.DataTableManager;

public class InitZdata extends BaseInit implements IBaseInit {

	public synchronized void Init() {

		BDebug(967912002, this.getClass().getName());

		DataBaseManager dBaseManager = new DataBaseManager();

		dBaseManager.Init();

		DataTableManager dTableManager = new DataTableManager();

		dTableManager.Init();

	}

}
