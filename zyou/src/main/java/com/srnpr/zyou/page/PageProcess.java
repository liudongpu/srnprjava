package com.srnpr.zyou.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {


		MWebPage mPageInfo=new MWebPage();

		String sPageTarget =wRequest.Get(EWebRequest.Url_Target);

		if (sPageTarget.equals("center")) {
			DataHelper dHelper = new DataHelper();

			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column"));
		} else if (sPageTarget.equals("list")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		} else if (sPageTarget.equals("put")) {

			DataHelper dHelper = new DataHelper();
			//mPageInfo.setPageData();

			List<MWebElement> aElms=new ArrayList<MWebElement>();

			for(Map<String, Object> mMap:dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"))
			{
				MWebElement mElm=new MWebElement();
				mElm.setTarget("m_page_input");

				String sName=(String)mMap.get("column_name");

				mElm.setName(sName);

				if(wRequest.ContainsParam(sName))
				{
					mElm.setValue(wRequest.GetParam(sName));
				}

				aElms.add(mElm);

			}

			mPageInfo.setPageData(aElms);




		} else if (sPageTarget.equals("post")) {
			DataHelper dHelper = new DataHelper();
			mPageInfo.setPageData(dHelper.Get("zdata", "zdata_column",
					"table_name", "zdata_column"));
		}

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");


		return mPageInfo;
	}

}
