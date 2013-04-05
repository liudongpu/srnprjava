package com.srnpr.zcom.init;

import java.util.Map;

import org.junit.Test;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.*;

public class InitJunit implements IBaseInit {

	public void Init() {
		
	
		InitJunitConst();
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
	}
	
	
	
	public void InitJunitConst()
	{
		 CommonConst commonConst=new CommonConst();
		 Map<String,String> m = System.getenv();
		 ComFunction.OutLog(m.get("srnprjava_path"));
		 
		 String sTempPath=m.get("srnprjava_path")+"/zzoos/temp/tempz/";
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sTempPath+"/WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zero, sTempPath+"/zzero/");
		 
	}
	
	
	
	

}
