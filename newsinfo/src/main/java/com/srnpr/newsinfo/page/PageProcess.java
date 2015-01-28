package com.srnpr.newsinfo.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.newsinfo.call.UserCall;
import com.srnpr.newsinfo.call.InfoCall;
import com.srnpr.zcom.init.InitRoot;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.WebBaseProcess;

public class PageProcess implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {

		MWebPage mPageInfo = new MWebPage();

		mPageInfo.setPageInclude(wRequest.upSet(EWebSet.Url_Target));

		// if user
		if (wRequest.upSet(EWebSet.Url_View).equals("user")
				|| wRequest.upSet(EWebSet.Url_Target).equals("club")) {
			mPageInfo.setPageOptions(upUserInfo());
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
				if (c.getName().equals("bgpm_user_cookieid")) {

					mReturn = DataTableManager.Get("user_info").upOneMap(
							"cookie_id", c.getValue());
				}
			}

		}
		return mReturn;
	}

	public MResult result(PageRequest pRequest) {
		MResult mResult = new MResult();

		String sView = String.valueOf(pRequest.upSet(EWebSet.Url_View));
		if (sView.equals("reg")) {
			mResult = new UserCall(pRequest).Reg();
		} else if (sView.equals("login")) {
			mResult = new UserCall(pRequest).Login();
		} else if (sView.equals("forget")) {
			mResult = new UserCall(pRequest).Forget();
		}  else if (sView.equals("repass")) {
			mResult = new UserCall(pRequest).Repass();
		}else if (sView.equals("change_info")) {
			mResult = new UserCall(pRequest).ChangeInfo(upUserInfo());
		} else if (sView.equals("change_pass")) {
			mResult = new UserCall(pRequest).ChangePass(upUserInfo());
		} else if (sView.equals("comment_show")) {
			mResult = new InfoCall(pRequest).CommentList();
		}

		else if (sView.equals("comment_submit")) {
			mResult = new InfoCall(pRequest).CommentSubmit(upUserInfo());
		} else if (sView.equals("collect_submit")) {
			mResult = new InfoCall(pRequest).CollectSubmit(upUserInfo());
		} else if (sView.equals("update_goods")) {
			mResult = new InfoCall(pRequest).updateGoods();
		}
		return mResult;

	}

}
