
package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;

public class ShowProcess extends WebBaseProcess
{
	public MWebPage ShowHtml(PageRequest wRequest)
	{

		MWebPage mPageInfo = new MWebPage();

		String sPageTarget = wRequest.upSet(EWebSet.Url_Target);

		String sPageView = wRequest.upSet(EWebSet.Url_View);
		
		
		
		int iPageType=Integer.valueOf(ConfigCacheManager.GetHash("zdata.did_page_type").get(sPageTarget));
		

		//列表页
		if (iPageType==416120103)
		{

		
			
			
			MWebView mView = WebViewManager.Get(sPageView);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());

			List<List<String>> listPageData=new ArrayList<List<String>>();

			List<String> listTitle=new ArrayList<String>();
			
			List<Map<String, Object>> listMaps=dHelper.upListListByQuery(wRequest.upParamsHashMap());
			
			
			List<MWebFields> listFields=upUseFields(mView, iPageType);
			List<MWebOptions> listOptions=upUseOptions(mView, iPageType);
			
			for(MWebFields mFields: listFields)
			{
				listTitle.add(mFields.getFieldName());
			}
			
			
			for(MWebOptions mOptions:reloadOptions(416120107, mView, wRequest, mPageInfo, null))
			{
				listTitle.add(mOptions.getName());

			}
			

			listPageData.add(listTitle);
			
			for(Map<String, Object> mData:listMaps)
			{
				List<String> listDataList=new ArrayList<String>();
				for(MWebFields mFields: listFields)
				{
					if(mData.containsKey(mFields.getColumnName()))
					{
						listDataList.add(String.valueOf(mData.get(mFields.getColumnName())));
					}
				}
				
				for(MWebOptions mOptions:reloadOptions(416120107, mView, wRequest, mPageInfo, mData))
				{
					listDataList.add(mOptions.getParams());

				}
				
				
				
				listPageData.add(listDataList);
				
				
			}
			
			
			//mPageInfo.setPageData(dHelper.upList());
			mPageInfo.setPageData(listPageData);
			
			mPageInfo.setPageOptions(reloadOptions(iPageType, mView,wRequest,mPageInfo,null));
			

		}
		else if (iPageType==416120101)
		{

			MWebView mView = WebViewManager.Get(sPageView);
			
		

			List<MWebElement> aElms = new ArrayList<MWebElement>();

			for (Map<String, Object> mMap : DataTableManager.Get("zdata_column").upListListByQuery("table_name", mView.getTableName()))
			{
				MWebElement mElm = new MWebElement();
				mElm.setTarget("m_page_input");
				String sName = (String) mMap.get("column_name");
				mElm.setName(sName);
				if (wRequest.isContainsParam(sName))
				{
					mElm.setValue(wRequest.upParam(sName));
				}

				aElms.add(mElm);

			}

			mPageInfo.setPageData(aElms);
			
			mPageInfo.setPageOptions(reloadOptions(iPageType, mView,wRequest,mPageInfo,null));
			

		}
		else if (iPageType==416120105)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());
			Map<String, Object> mData=dHelper.upOneMap(wRequest.upParamsHashMap());
			List<MWebElement> aElms = new ArrayList<MWebElement>();
			
			
			
			
			
			
			for (Map<String, Object> mMap : DataTableManager.Get("zdata_column").upListListByQuery("table_name", mView.getTableName()))
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
			
			mPageInfo.setPageOptions(reloadOptions(iPageType, mView,wRequest,mPageInfo,null));
		}
		else
		{
			
		}
		
		
		

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");

		return mPageInfo;
	}
	
	
	public List<MWebOptions> reloadOptions(int iPageType,MWebView mView,PageRequest wRequest,MWebPage mPageInfo,Map<String, Object> mData)
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
				
				
				if(mNewOptions.getDidOptionType()==415101001)
				{
					sParams=FormatHelper.FormatString(WebConst.Get(EWebConst.base_page_url), wRequest.upSet(EWebSet.Url_Path),"put",wRequest.upSet(EWebSet.Url_View),mOptions.getUid(),"");
				}
				else if(mNewOptions.getDidOptionType()==415101305)
				{
					sParams=FormatHelper.FormatString(WebConst.Get(EWebConst.base_page_url), wRequest.upSet(EWebSet.Url_Path),"post",wRequest.upSet(EWebSet.Url_View),mOptions.getUid(),"zid=[zid]");
					
				}
				
				
				if(sParams.indexOf("]")>-1)
				{
					String[] sSplistsStrings=sParams.split("]");
					MHashMap mHashMap=new MHashMap();
					for(String sSpt:sSplistsStrings)
					{
						int iIndexLeft=sSpt.lastIndexOf("[");
						if(iIndexLeft>-1)
						{
							String[] sKeysStrings=sSpt.substring(iIndexLeft+1).split("@");
							
							if(sKeysStrings.length==2)
							{
								
								if(sKeysStrings[0].length()==0)
								{
									sParams=sParams.replace(sSpt.substring(iIndexLeft)+"]", String.valueOf(mData.get(sSpt.substring(iIndexLeft+1))));
								}
								
							}
							else {
								if(mData!=null)
								sParams=sParams.replace(sSpt.substring(iIndexLeft)+"]", String.valueOf(mData.get(sSpt.substring(iIndexLeft+1))));
							}
							
						}
					}
				}
				
				//结果内页特殊处理
				if(iPageType==416120107)
				{
					sParams="@"+mNewOptions.getDidOptionType()+"@"+mNewOptions.getName()+"@"+sParams;
				}
				
				
				
				
				mNewOptions.setParams(sParams);
				
				
				
				
				
				
				
				listOptions.add(mNewOptions);
				
				
				
				
				
				
			}
		}
		
		return listOptions;
	}
	
	
	
	
	
	
	
	
	

}
