package com.srnpr.zcom.servlet;
import javax.servlet.ServletContext;

import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.InitRoot;
public class ContextLoader {

	
	
public  void Init(ServletContext servletContext) {
		
		try {
			
			 
			servletContext.log("Initializing srnprjava");
			
			
			InitProcess();
			
		}
		catch(RuntimeException ex)
		{
			servletContext.log("Initializing zsrnpr Error"+ex.getMessage());
		}
		
		
	}

	private void InitProcess() {
		
		IBaseInit baseInit=new InitRoot();
		baseInit.Init();
	}
}
