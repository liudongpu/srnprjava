package com.srnpr.ahinfo.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.ahinfo.call.UserCall;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.WebBaseProcess;

public class PageProcess implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {
		MWebPage mPageInfo = new MWebPage();

		String sTargetString = wRequest.upSet(EWebSet.Url_Target);
		mPageInfo.setPageInclude(sTargetString);
		
		if (wRequest.upSet(EWebSet.Url_View).equals("joinus")) {
			
			
			wRequest.inSet(EWebSet.Url_Target, "add");
			wRequest.inSet(EWebSet.Url_View, "v_ah_join");
			
			mPageInfo = new WebBaseProcess().ShowHtml(wRequest);
			
			List<MWebFields> mPageDataFields = (List<MWebFields>) mPageInfo
					.getPageData();
			
			mPageInfo.setPageData(mPageDataFields);
			
			
			mPageInfo.setPageInclude(sTargetString);

			
		}
		
		
		
		if (wRequest.upSet(EWebSet.Url_View).equals("user")) {

			Map<String, Object> mUserMap = upUserInfo();

			if (mUserMap != null && mUserMap.size() > 0) {
				mPageInfo.setPageOptions(mUserMap);
			} else {
				mPageInfo.setPageInclude("uaccess");

			}

			if (sTargetString.equals("uedit")) {

				if (mUserMap.get("info_domain") != null
						&& StringUtils.isNotEmpty(mUserMap.get("info_domain")
								.toString())) {

					wRequest.inSet(EWebSet.Url_Target, "edit");
					wRequest.inSet(EWebSet.Url_View, "v_y_info");

					wRequest.getParamsMap().put("domain",
							mUserMap.get("info_domain").toString());

					mPageInfo = new WebBaseProcess().ShowHtml(wRequest);

					List<MWebFields> mPageDataFields = (List<MWebFields>) mPageInfo
							.getPageData();

					String sEngStrings = ",domain,area,money_cid,peopletype_cid,score,icon_cids,adv_cid,show_flag";

					for (int i = mPageDataFields.size() - 1; i >= 0; i--) {
						if (StringUtils.contains(sEngStrings, ","
								+ mPageDataFields.get(i).getColumnName() + ",")) {
							mPageDataFields.remove(mPageDataFields.get(i));
						}

					}

					mPageInfo.setPageData(mPageDataFields);
					mPageInfo.setPageOptions(mUserMap);
					mPageInfo.setPageInclude(sTargetString);

				} else {
					mPageInfo.setPageInclude("uaccess");
				}

			}

		}

		return mPageInfo;
	}

	private Map<String, Object> upUserInfo() {
		Map<String, Object> mReturn = null;

		HttpServletRequest hRequest = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();

		if (hRequest != null && hRequest.getCookies() != null
				&& hRequest.getCookies().length > 0) {

			for (Cookie c : hRequest.getCookies()) {
				if (c.getName().equals("yinxl_user_cookieid")) {

					mReturn = DataTableManager.Get("y_user").upOneMap(
							"cookieid", c.getValue());
				}
			}

		}
		return mReturn;
	}

	public MResult result(PageRequest pRequest) {
		MResult mResult = new MResult();

		String sView = String.valueOf(pRequest.upSet(EWebSet.Url_View));


		if (sView.equals("reg")) {
			mResult = new UserCall(pRequest).callReg();

		} else if (sView.equals("login")) {
			mResult = new UserCall(pRequest).callLogin();

		} else if(sView.equals("comentsubmit"))
		{
			mResult = new UserCall(pRequest).callComment(upUserInfo());
		}
		else if (sView.equals("v_ah_join")) {
			mResult = new WebBaseProcess().showResult(pRequest);
		}
		
		

		return mResult;
	}

}
