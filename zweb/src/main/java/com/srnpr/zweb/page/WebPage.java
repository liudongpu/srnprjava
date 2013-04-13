package com.srnpr.zweb.page;

import java.util.HashMap;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.model.MWebPage;

public class WebPage extends BaseClass {

	
	
	public String GetPageHtml(PageRequest wRequest) {

		HashMap<Object, Object> hPageTemp = new HashMap<Object, Object>();
		
		HashMap<Object, Object> hWebPage = new HashMap<Object, Object>();

		
		
		MWebConfig mConfig=WebConst.GetWebConfig(wRequest.Get(EWebRequest.Url_Path));

		hWebPage.put("WebConfig", mConfig);


		MWebPage mPageInfo = WebConst.GetWebProcess(wRequest.Get(EWebRequest.Url_Path)).Process(wRequest);


		hWebPage.put("PageInfo", mPageInfo);

		hPageTemp.put("WebPage", hWebPage);

		FreemarkerHelper fHelper = new FreemarkerHelper();

		String sReturnString = fHelper.GetStringFromTemp(
				WebConst.Get(EWebConst.templete_path),
				mConfig.getBaseInclude(), hPageTemp);

		return sReturnString;

	}
	
	
	
	
	public String GetPageHtml(String sPath,String sUrl) {
		PageRequest wRequest=new PageRequest(((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest());
		wRequest.Put(EWebRequest.Url_Path, sPath);
		String[] sParams=sUrl.split("-");
		wRequest.Put(EWebRequest.Url_Target, sParams[0]);
		wRequest.Put(EWebRequest.Url_View, sParams[1]);
		return GetPageHtml(wRequest);

	}

}
