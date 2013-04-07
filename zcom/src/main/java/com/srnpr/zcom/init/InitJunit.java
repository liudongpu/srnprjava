package com.srnpr.zcom.init;

import java.io.File;
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
		
		 String sDirPathString=System.getenv("srnprjava_path");
		 
		 BDebug("can't init srnprjava_path");
		 
		
		 //特殊判断  如果无法读取系统变量则存放到用户文件夹
		 if(sDirPathString==null)
		 {
			 sDirPathString=System.getProperty("user.home");
		 }
		 
		
		 BDebug(sDirPathString);
		 
		 File file=new File(sDirPathString);
		 if(!file.exists())
		 {
			 BError("can't init syspath");
		 }
		 
		
		 
		 String sTempPath=sDirPathString+"/zzoos/temp/tempz/";
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sTempPath+"WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zzero, sTempPath+"zzero/");
		 commonConst.Put(EComConst.server_web_name, "");
		 
	}
	
	
	
	

}
