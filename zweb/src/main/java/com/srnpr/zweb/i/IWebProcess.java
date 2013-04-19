package com.srnpr.zweb.i;

import com.srnpr.zcom.model.MResult;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;

public interface IWebProcess {



	public MWebPage Process(PageRequest wRequest);
	
	
	public MResult result(PageRequest pRequest);
	
	


}
