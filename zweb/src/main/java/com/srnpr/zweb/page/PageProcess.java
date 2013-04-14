package com.srnpr.zweb.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {


		MWebPage mWebPage=new MWebPage();



		String sPageTarget=wRequest.Get(EWebRequest.Url_Target);

		if(sPageTarget.equals("put"))
		{
		
			DataSupport dSupport=new DataSupport();
			dSupport.Put("zdata_column", wRequest.getReqMap());

		}








		return mWebPage;
	}

}
