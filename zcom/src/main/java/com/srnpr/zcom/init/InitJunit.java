package com.srnpr.zcom.init;

import java.io.File;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.i.IBaseInit;

public class InitJunit extends BaseClass implements IBaseInit {

	public void Init() {
		
	
		
		BDebug(0,this.getClass().getName());
		
		InitJunitConst();
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
	}
	
	
	
	public void InitJunitConst()
	{
		 CommonConst commonConst=new CommonConst();
		 String sDirPathString=System.getenv("srnprjava_path");
		 
		 //特殊判断  如果无法读取系统变量则存放到用户文件夹
		 if(sDirPathString==null)
		 {
			 BError(0,"can't init srnprjava_path");
			 sDirPathString=System.getProperty("user.home");
		 }
		 

		 File file=new File(sDirPathString);
		 if(!file.exists())
		 {
			 BError(0,"can't init syspath");
		 }
		 
		
		 
		 String sTempPath=sDirPathString+"/zzoos/temp/tempz/";
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sTempPath+"WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zzero, sTempPath+"zzero/");
		 commonConst.Put(EComConst.server_web_name, "");
		 
		// commonConst.Put(EComConst.com_run_type, ERunType.junit);
		 
		 
	}
	
	
	
	

}
