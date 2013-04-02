package com.srnpr.zcom.servlet;
import javax.servlet.ServletContext;
public class ContextLoader {

	
	
public  void Init(ServletContext servletContext) {
		
		try {
			
			 
			servletContext.log("Initializing zsrnpr");
			
			
			InitProcess();
			
		}
		catch(RuntimeException ex)
		{
			servletContext.log("Initializing zsrnpr Error"+ex.getMessage());
		}
		
		
	}

	private void InitProcess() {
		
		
	}
}
