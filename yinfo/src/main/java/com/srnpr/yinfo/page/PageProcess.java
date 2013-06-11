package com.srnpr.yinfo.page;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.yinfo.call.UserCall;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;

public class PageProcess implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {
		MWebPage mPageInfo = new MWebPage();

		mPageInfo.setPageInclude(wRequest.upSet(EWebSet.Url_Target));

		if (wRequest.upSet(EWebSet.Url_View).equals("user")) {

			Map<String, Object> mUserMap = upUserInfo();

			if (mUserMap != null && mUserMap.size() > 0) {
				mPageInfo.setPageOptions(mUserMap);
			} else {
				mPageInfo.setPageInclude("uaccess");

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

		}
		else if(sView.equals("changeinfo"))
		{
			mResult = new UserCall(pRequest).callChangeInfo();
		}
		else if(sView.equals("changepass"))
		{
			mResult = new UserCall(pRequest).callChangePass(upUserInfo());
		}

		return mResult;
	}

}
