
package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;

public class ShowProcess extends BaseClass
{
	public MWebPage ShowHtml(PageRequest wRequest)
	{

		MWebPage mPageInfo = new MWebPage();

		String sPageTarget = wRequest.Get(EWebRequest.Url_Target);

		String sPageView = wRequest.Get(EWebRequest.Url_View);
		
		
		
		int iPageType=Integer.valueOf(ConfigCacheManager.GetHash("zdata.did_page_type").get(sPageTarget));
		

		if (iPageType==416103001)
		{

			MWebView mView = WebViewManager.Get(sPageView);
			
			
			DataHelper dHelper = DataTableManager.Get(mView.getTableName());
			mPageInfo.setPageData(dHelper.Get());
			
			
			mPageInfo.setPageOptions(ResetOptions(iPageType, mView,wRequest,mPageInfo));
			

		}
		else if (iPageType==416103002)
		{

			MWebView mView = WebViewManager.Get(sPageView);
			
		

			List<MWebElement> aElms = new ArrayList<MWebElement>();

			for (Map<String, Object> mMap : DataTableManager.Get("zdata_column").GetListByQuery("table_name", mView.getTableName()))
			{
				MWebElement mElm = new MWebElement();
				mElm.setTarget("m_page_input");
				String sName = (String) mMap.get("column_name");
				mElm.setName(sName);
				if (wRequest.ContainsParam(sName))
				{
					mElm.setValue(wRequest.GetParam(sName));
				}

				aElms.add(mElm);

			}

			mPageInfo.setPageData(aElms);
			
			mPageInfo.setPageOptions(ResetOptions(iPageType, mView,wRequest,mPageInfo));
			

		}
		else if (iPageType==416103003)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			DataHelper dHelper = DataTableManager.Get(mView.getTableName());
			
			
			Map<String, Object> mData=dHelper.GetOne("zid",wRequest.Get(EWebRequest.Url_Param));
			
			List<MWebElement> aElms = new ArrayList<MWebElement>();

			for (Map<String, Object> mMap : DataTableManager.Get("zdata_column").GetListByQuery("table_name", mView.getTableName()))
			{
				MWebElement mElm = new MWebElement();
				mElm.setTarget("m_page_input");
				String sName = (String) mMap.get("column_name");
				mElm.setName(sName);
				if (mData.containsKey(sName))
				{
					mElm.setValue(String.valueOf(mData.get(sName)));
				}

				aElms.add(mElm);
			}
			mPageInfo.setPageData(aElms);
			
			mPageInfo.setPageOptions(ResetOptions(iPageType, mView,wRequest,mPageInfo));
		}
		else
		{
			
		}
		
		
		

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");

		return mPageInfo;
	}
	
	
	public List<MWebOptions> ResetOptions(int iPageType,MWebView mView,PageRequest wRequest,MWebPage mPageInfo)
	{
		List<MWebOptions> listOptions = new ArrayList<MWebOptions>();

		for (MWebOptions mOptions : mView.getOptions())
		{
			if (mOptions.getDidPageType() == iPageType)
			{

				MWebOptions mNewOptions = new MWebOptions();
				mNewOptions.setName(mOptions.getName());
				mNewOptions.setDidOptionType(mOptions.getDidOptionType());
				
				
				String sParams=mOptions.getParams();
				
				
				if(mNewOptions.getDidOptionType()==416101002)
				{
					sParams=FormatHelper.FormatString(WebConst.Get(EWebConst.base_page_url), wRequest.Get(EWebRequest.Url_Path),"put",wRequest.Get(EWebRequest.Url_View),mOptions.getUid(),"");
				}
				
				
				
				
				mNewOptions.setParams(sParams);
				
				
				
				
				
				
				
				listOptions.add(mNewOptions);
				
				
				
				
				
				
			}
		}
		
		return listOptions;
	}
	
	
	
	
	
	
	
	
	

}
