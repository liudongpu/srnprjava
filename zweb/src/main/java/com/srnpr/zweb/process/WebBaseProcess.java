package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;

public class WebBaseProcess extends BaseClass
{
	
	
	
public MResult showResult(PageRequest pRequest) {
		
		MResult mResult=new MResult();
		String sPageView=pRequest.upSet(EWebSet.Url_View);
		int iPageType=Integer.valueOf( pRequest.upRequestParam("func_from_page_did"));
		if (iPageType==416120101)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			
			DataSupport dSupport=new DataSupport();
			dSupport.insertData(mView.getTableName(), pRequest.getReqMap());
			
		
			
		}
		else if (iPageType==416120105)
		{
			MWebView mView = WebViewManager.Get(sPageView);
			DataSupport dSupport=new DataSupport();
			dSupport.updateData(mView.getTableName(), pRequest.getReqMap(),"uid");
			
			
			
			
			
		
			
		}else if (iPageType==416120106)
		{
			
			
			
			
			
		}
		
		return mResult;
	}
	
	

	
	public MWebPage ShowHtml(PageRequest wRequest) {

		MWebPage mPageInfo = new MWebPage();

		String sPageTarget = wRequest.upSet(EWebSet.Url_Target);

		String sPageView = wRequest.upSet(EWebSet.Url_View);

		int iPageType = Integer.valueOf(ConfigCacheManager.GetHash(
				"zdata.did_page_type").get(sPageTarget));

		// 列表页
		if (iPageType == 416120103) {

			MWebView mView = WebViewManager.Get(sPageView);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());

			List<List<String>> listPageData = new ArrayList<List<String>>();

			List<String> listTitle = new ArrayList<String>();

			List<Map<String, Object>> listMaps = dHelper
					.upListListByQuery(wRequest.getParamsMap());

			List<MWebFields> listFields = upUseFields(mView, iPageType);
			// List<MWebOptions> listOptions=upUseOptions(mView, iPageType);

			for (MWebFields mFields : listFields) {
				listTitle.add(mFields.getFieldName());
			}

			for (MWebOptions mOptions : reloadOptions(416120107, mView,
					wRequest, mPageInfo, null)) {
				listTitle.add(mOptions.getName());

			}

			listPageData.add(listTitle);

			for (Map<String, Object> mData : listMaps) {
				List<String> listDataList = new ArrayList<String>();
				for (MWebFields mFields : listFields) {
					if (mData.containsKey(mFields.getColumnName())) {
						listDataList.add(String.valueOf(mData.get(mFields
								.getColumnName())));
					}
				}

				for (MWebOptions mOptions : reloadOptions(416120107, mView,
						wRequest, mPageInfo, mData)) {
					listDataList.add(mOptions.getParams());

				}

				listPageData.add(listDataList);

			}

			// mPageInfo.setPageData(dHelper.upList());
			mPageInfo.setPageData(listPageData);

			mPageInfo.setPageOptions(reloadOptions(iPageType, mView, wRequest,
					mPageInfo, null));

		} else if (iPageType == 416120101) {

			MWebView mView = WebViewManager.Get(sPageView);

			List<MWebFields> mPageDataFields = new ArrayList<MWebFields>();

			List<MWebFields> listFields = upUseFields(mView, iPageType);
			for (MWebFields mFields : listFields) {

				MWebFields mNewFields = mFields.clone();
				if (wRequest.isContainsRequestParam(mFields.getColumnName())) {
					mNewFields.setFieldValue(wRequest.upRequestParam(mFields
							.getColumnName()));
				}
				mPageDataFields.add(mNewFields);
			}

			mPageInfo.setPageData(mPageDataFields);
			mPageInfo.setPageOptions(reloadOptions(iPageType, mView, wRequest,
					mPageInfo, null));

		} else if (iPageType == 416120105) {
			MWebView mView = WebViewManager.Get(sPageView);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());

			Map<String, Object> mData = dHelper.upOneMap(wRequest
					.getParamsMap());

			List<MWebFields> listFields = upUseFields(mView, iPageType);

			List<MWebFields> mPageDataFields = new ArrayList<MWebFields>();

			for (MWebFields mFields : listFields) {

				MWebFields mNewFields = mFields.clone();
				if (mData.containsKey(mFields.getColumnName())) {
					mNewFields.setFieldValue(String.valueOf(mData.get(mFields
							.getColumnName())));
				}
				mPageDataFields.add(mNewFields);

			}

			mPageInfo.setPageData(mPageDataFields);

			mPageInfo.setPageOptions(reloadOptions(iPageType, mView, wRequest,
					mPageInfo, null));
		} else {

		}

		// hPageInfo.put("PageInclude", "page_"+sPageType+".ftl");

		mPageInfo.setPageInclude("page_" + sPageTarget + ".ftl");

		return mPageInfo;
	}

	public List<MWebOptions> reloadOptions(int iPageType, MWebView mView,
			PageRequest wRequest, MWebPage mPageInfo, Map<String, Object> mData) {

		List<MWebOptions> listOptions = new ArrayList<MWebOptions>();

		for (MWebOptions mOptions : mView.getOptions()) {
			if (mOptions.getDidPageType() == iPageType) {

				MWebOptions mNewOptions = new MWebOptions();
				mNewOptions.setName(mOptions.getName());
				mNewOptions.setDidOptionType(mOptions.getDidOptionType());

				String sParams = mOptions.getParams();

				if (mNewOptions.getDidOptionType() == 415101001) {
					sParams = FormatHelper.FormatString(
							WebConst.Get(EWebConst.base_page_url),
							wRequest.upSet(EWebSet.Url_Path), "put",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(), "");
				} else if (mNewOptions.getDidOptionType() == 415101305) {
					sParams = FormatHelper.FormatString(
							WebConst.Get(EWebConst.base_page_url),
							wRequest.upSet(EWebSet.Url_Path), "post",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(), "uid=[uid]");

				}
				else if(mNewOptions.getDidOptionType()==415101019)
				{
					sParams = FormatHelper.FormatString(
							WebConst.Get(EWebConst.base_page_url),
							wRequest.upSet(EWebSet.Url_Path), "func",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(), "func_from_page_did="+wRequest.getDidPageType());
				}
				

				// 判断如果有特殊标记则特殊处理
				if (sParams.indexOf("]") > -1) {
					String[] sSplistsStrings = sParams.split("]");

					for (String sSpt : sSplistsStrings) {
						int iIndexLeft = sSpt.lastIndexOf("[");
						if (iIndexLeft > -1) {

							String sSptKey = sSpt.substring(iIndexLeft + 1);

							String[] sKeysStrings = sSptKey.split("@");

							if (sKeysStrings.length == 2) {
								// 如果参数定义的左边为空 则依旧调用mData
								if (sKeysStrings[0].length() == 0) {
									sParams = sParams.replace("[" + sSptKey
											+ "]",
											String.valueOf(mData.get(sSptKey)));
								} else {

									// 如果左标记参数为t 则调用this
									if (sKeysStrings[0].equals("t")) {
										if (sKeysStrings[1].equals("uid")) {
											sParams = sParams.replace("["
													+ sSptKey + "]",
													mOptions.getUid());
										}
									}

								}

							} else {
								if (mData != null)
									sParams = sParams.replace("[" + sSptKey
											+ "]",
											String.valueOf(mData.get(sSptKey)));
							}

						}
					}
				}

				// 结果内页特殊处理
				if (iPageType == 416120107) {
					sParams = "@" + mNewOptions.getDidOptionType() + "@"
							+ mNewOptions.getName() + "@" + sParams;
				}

				mNewOptions.setParams(sParams);

				listOptions.add(mNewOptions);

			}
		}

		return listOptions;
	}
	
	
	
	
	public List<MWebFields> upUseFields(MWebView mView,int iDidPageType)
	{
		
		List<MWebFields> listReturnFields=new ArrayList<MWebFields>();
		
		for(MWebFields mFields:mView.getFields())
		{
			listReturnFields.add(mFields);
		}
		
		return listReturnFields;
	}
	
	
	public List<MWebOptions> upUseOptions(MWebView mView,int iDidPageType)
	{
		List<MWebOptions> listReturnFields=new ArrayList<MWebOptions>();
		
		for(MWebOptions mFields:mView.getOptions())
		{
			if(mFields.getDidPageType()==iDidPageType)
			{
				listReturnFields.add(mFields);
			}
		}
		
		return listReturnFields;
	}
	
	
	
}
