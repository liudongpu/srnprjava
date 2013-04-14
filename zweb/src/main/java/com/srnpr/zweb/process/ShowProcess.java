package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;

public class ShowProcess extends BaseClass
{
	public MWebPage ShowProcess(PageRequest wRequest)
	{

		MWebPage mPageInfo = new MWebPage();

		String sPageTarget = wRequest.Get(EWebRequest.Url_Target);
		
		String sPageView= wRequest.Get(EWebRequest.Url_View);

		if (sPageTarget.equals("list"))
		{
			
			
			MWebView mView=WebViewManager.Get(sPageView);
			
			DataHelper dHelper = new DataHelper(mView.getTableName());
			mPageInfo.setPageData(dHelper.Get());
			
			
			
			
			
			
			
		}
		else if (sPageTarget.equals("put"))
		{

			DataHelper dHelper = new DataHelper("zdata_column");
			// mPageInfo.setPageData();

			List<MWebElement> aElms = new ArrayList<MWebElement>();

			for (Map<String, Object> mMap : dHelper.GetListByQuery("table_name", "zdata_column"))
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

		}
		else if (sPageTarget.equals("post"))
		{
			DataHelper dHelper = new DataHelper("zdata_column");
			mPageInfo.setPageData(dHelper.GetListByQuery("table_name", "zdata_column"));
		}

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");

		return mPageInfo;
	}
}
