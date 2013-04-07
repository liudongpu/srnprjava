package com.srnpr.zcom.init;

import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.i.IBaseInit;

public class InitJunit extends BaseClass implements IBaseInit {

	public void Init() {
		
	
		
		BDebug(this.getClass().getName());
		
		InitJunitConst();
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
	}
	
	
	
	public void InitJunitConst()
	{
		 CommonConst commonConst=new CommonConst();
		 Map<String,String> m = System.getenv();
		
		 
		 String sTempPath=m.get("srnprjava_path")+"/zzoos/temp/tempz/";
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sTempPath+"WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zzero, sTempPath+"zzero/");
		 commonConst.Put(EComConst.server_web_name, "");
		 
	}
	
	
	
	

}
