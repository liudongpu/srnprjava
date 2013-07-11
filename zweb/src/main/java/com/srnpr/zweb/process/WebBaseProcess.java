package com.srnpr.zweb.process;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.NumberUtils;
import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.helper.HashHelper;
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
import com.srnpr.zweb.model.MPageNav;
import com.srnpr.zweb.model.MPagePagination;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;

public class WebBaseProcess extends BaseClass {

	public MResult showResult(PageRequest pRequest) {

		MResult mResult = new MResult();
		String sPageView = pRequest.upSet(EWebSet.Url_View);
		int iPageType = Integer.valueOf(pRequest.getParamsMap()
				.get("func_from_page_did").toString());
		if (iPageType == 416120101) {
			MWebView mView = WebViewManager.upView(sPageView, iPageType);

			DataSupport dSupport = new DataSupport();
			dSupport.insertData(mView.getTableName(), pRequest.getReqMap());

		} else if (iPageType == 416120105) {
			MWebView mView = WebViewManager.upView(sPageView, iPageType);
			DataSupport dSupport = new DataSupport();
			dSupport.updateData(mView.getTableName(), pRequest.getReqMap(),
					"uid");

		} else if (iPageType == 416120104) {
			MWebView mView = WebViewManager.upView(sPageView, iPageType);

			DataSupport dSupport = new DataSupport();
			dSupport.deleteData(mView.getTableName(), "uid", pRequest
					.getParamsMap().get("uid").toString());
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

			MWebView mView = WebViewManager.upView(sPageView, iPageType);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());

			List<List<String>> listPageData = new ArrayList<List<String>>();

			List<String> listTitle = new ArrayList<String>();

			List<MWebFields> listFields = WebViewManager.upView(sPageView,
					416120107).getFields();
			// List<MWebOptions> listOptions=upUseOptions(mView, iPageType);

			StringBuffer sbField = new StringBuffer();

			sbField.append("*");

			List<MWebFields> listQuery = new ArrayList<MWebFields>();

			boolean bInquery = false;

			for (MWebFields mFields : listFields) {
				listTitle.add(mFields.getFieldName());

				if (!StringUtils.isEmpty(mFields.getSourceparameter())) {
					sbField.append(",(" + mFields.getSourceparameter()
							+ ") as " + mFields.getColumnName() + "_zzz ");
				}

				if (mFields.getDidQueryType() > 0) {
					// listQuery.add(mFields.clone());
					bInquery = true;
				}

			}

			if (bInquery) {
				for (MWebFields mQueryField : WebViewManager.upView(sPageView,
						416120109).getFields()) {
					if (mQueryField.getDidQueryType() > 0) {
						listQuery.add(mQueryField.clone());
					}
				}
			}

			for (MWebOptions mOptions : reloadOptions(416120107, mView,
					wRequest, mPageInfo, null)) {
				listTitle.add(mOptions.getName());

			}

			listPageData.add(listTitle);

			MPagePagination mPagePagination = new MPagePagination();

			if (StringUtils.isNotEmpty(wRequest.upSet(EWebSet.Url_Pagination))) {
				String[] sPaginations = wRequest.upSet(EWebSet.Url_Pagination)
						.toString().split("_");

				if (sPaginations.length == 3) {
					mPagePagination.setPageIndex(Integer
							.valueOf(sPaginations[0]));
					mPagePagination.setPageCount(Integer
							.valueOf(sPaginations[1]));
					mPagePagination.setPageSize(Integer
							.valueOf(sPaginations[2]));
				}

			}

			MHashMap mWhereMap = wRequest.getParamsMap();

			String sQuery = "";

			if (listQuery.size() > 0) {

				if (StringUtils.isNotEmpty(wRequest.upSet(EWebSet.Url_Query))) {
					MHashMap mQueryMap = HashHelper
							.atConvertStringToHash(wRequest
									.upSet(EWebSet.Url_Query));

					for (MWebFields mFields : listQuery) {

						String sFieldName = mFields.getColumnName();

						if (mQueryMap.containsKey(sFieldName)) {

							mFields.setFieldValue(mQueryMap.get(sFieldName)
									.toString());

							if (StringUtils.isNotEmpty(sQuery)) {
								sQuery = sQuery + " and ";
							}

							if (mFields.getDidQueryType() == 417020012) {
								mWhereMap.put(sFieldName,
										"%" + mQueryMap.get(sFieldName) + "%");
								sQuery = sQuery + " " + sFieldName + " like :"
										+ sFieldName + " ";
							}

						}

					}
				}

				mPageInfo.setPageQuery(listQuery);

			}

			if (mPagePagination.getPageCount() < 0) {
				mPagePagination.setPageCount(dHelper.upCountAll(sQuery,
						mWhereMap.upObjs()));
			}

			List<Map<String, Object>> listMaps = dHelper.upListAll(
					sbField.toString(),
					sQuery,
					"-zid",
					(mPagePagination.getPageIndex() - 1)
							* mPagePagination.getPageSize(),
					mPagePagination.getPageSize(), mWhereMap.upObjs());

			// List<Map<String, Object>> listMaps =
			// dHelper.upListListByQuery(sbField.toString(),
			// wRequest.getParamsMap());

			for (Map<String, Object> mData : listMaps) {

				List<String> listDataList = new ArrayList<String>();
				for (MWebFields mFields : listFields) {

					if (!StringUtils.isEmpty(mFields.getSourceparameter())) {
						listDataList.add(String.valueOf(mData.get(mFields
								.getColumnName() + "_zzz")));
					} else if (mData.containsKey(mFields.getColumnName())) {

						String sText = String.valueOf(mData.get(mFields
								.getColumnName()));

						if (mFields.getDidFieldType() == 416108121) {
							// sText="<a href=\"\" target=\"\"></a>";

							if (StringUtils.isNotEmpty(sText)) {
								sText = FormatHelper
										.FormatString(
												BConfig("zweb.replace_list_url"),
												sText);
							}
						}

						listDataList.add(sText);
					}
				}

				for (MWebOptions mOptions : reloadOptions(416120107, mView,
						wRequest, mPageInfo, mData)) {
					listDataList.add(mOptions.getParams());
				}
				listPageData.add(listDataList);

			}

			// mPageInfo.setPageData(dHelper.upList());

			mPageInfo.setPagePagination(mPagePagination);

			mPageInfo.setPageData(listPageData);

			mPageInfo.setPageOptions(reloadOptions(iPageType, mView, wRequest,
					mPageInfo, null));

		} else if (iPageType == 416120101) {

			MWebView mView = WebViewManager.upView(sPageView, iPageType);

			List<MWebFields> mPageDataFields = new ArrayList<MWebFields>();

			List<MWebFields> listFields = mView.getFields();
			for (MWebFields mFields : listFields) {

				MWebFields mNewFields = mFields.clone();
				if (wRequest.getParamsMap()
						.containsKey(mFields.getColumnName())) {
					mNewFields.setFieldValue(String.valueOf(wRequest
							.getParamsMap().get(mFields.getColumnName())));
				}
				mPageDataFields.add(mNewFields);
			}

			mPageInfo.setPageData(mPageDataFields);
			mPageInfo.setPageOptions(reloadOptions(iPageType, mView, wRequest,
					mPageInfo, null));

		} else if (iPageType == 416120105) {
			MWebView mView = WebViewManager.upView(sPageView, iPageType);
			TableSupport dHelper = DataTableManager.Get(mView.getTableName());

			List<MWebFields> listFields = mView.getFields();

			Map<String, Object> mData = dHelper.upOneMap(wRequest
					.getParamsMap());

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
		} else if (iPageType == 416120112) {
			sPageTarget = wRequest.upSet(EWebSet.Url_View);
		}

		mPageInfo.setReq(wRequest);

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
					/*
					 * sParams = FormatHelper.FormatString(
					 * WebConst.Get(EWebConst.base_page_url),
					 * wRequest.upSet(EWebSet.Url_Path), "add",
					 * wRequest.upSet(EWebSet.Url_View), mOptions.getUid(),
					 * mOptions.getParams());
					 */

					sParams = FormatHelper.upSplit("add",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(), mOptions.getParams());

				} else if (mNewOptions.getDidOptionType() == 415101305) {
					/*
					 * sParams = FormatHelper.FormatString(
					 * WebConst.Get(EWebConst.base_page_url),
					 * wRequest.upSet(EWebSet.Url_Path), "edit",
					 * wRequest.upSet(EWebSet.Url_View), mOptions.getUid(),
					 * "uid=[uid]");
					 */

					sParams = FormatHelper.upSplit("edit",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(), "uid=[uid]");

				} else if (mNewOptions.getDidOptionType() == 415101019) {
					/*
					 * sParams = FormatHelper.FormatString(
					 * WebConst.Get(EWebConst.base_page_url),
					 * wRequest.upSet(EWebSet.Url_Path), "func",
					 * wRequest.upSet(EWebSet.Url_View), mOptions.getUid(),
					 * "func_from_page_did=" + wRequest.getDidPageType());
					 */
					sParams = FormatHelper.upSplit("func",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(),
							"func_from_page_did=" + wRequest.getDidPageType());

				} else if (mNewOptions.getDidOptionType() == 415101304) {
					/*
					 * sParams = FormatHelper.FormatString(
					 * WebConst.Get(EWebConst.base_page_url),
					 * wRequest.upSet(EWebSet.Url_Path), "func",
					 * wRequest.upSet(EWebSet.Url_View), mOptions.getUid(),
					 * "func_from_page_did=416120104&uid=[uid]");
					 */
					sParams = FormatHelper.upSplit("func",
							wRequest.upSet(EWebSet.Url_View),
							mOptions.getUid(),
							"func_from_page_did=416120104&uid=[uid]");

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
									} else if (sKeysStrings[0].equals("p")) {
										if (wRequest.getParamsMap()
												.containsKey(sKeysStrings[1])) {
											sParams = sParams
													.replace(
															"[" + sSptKey + "]",
															String.valueOf(wRequest
																	.getParamsMap()
																	.get(sKeysStrings[1])));
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

}
