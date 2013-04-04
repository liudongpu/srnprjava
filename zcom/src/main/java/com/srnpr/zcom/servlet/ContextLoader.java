package com.srnpr.zcom.servlet;
import javax.servlet.ServletContext;

import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.InitRoot;
public class ContextLoader {

	
	
public  void Init(ServletContext servletContext) {
		
		try {
			
			 
			servletContext.log("Initializing srnprjava");
			
			
			InitProcess(servletContext);
			
		}
		catch(RuntimeException ex)
		{
			servletContext.log("Initializing zsrnpr Error"+ex.getMessage());
		}
		
		
	}

	private void InitProcess(ServletContext servletContext) {
		
		InitRoot baseInit=new InitRoot();
		baseInit.InitConst( servletContext);
		baseInit.Init();
	}
}
