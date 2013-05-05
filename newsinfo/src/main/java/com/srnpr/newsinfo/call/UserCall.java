package com.srnpr.newsinfo.call;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.page.PageExec;
import com.srnpr.zweb.page.PageRequest;

public class UserCall extends BaseClass {

	private MResult result = new MResult();

	public MResult getResult() {
		return result;
	}

	public void setResult(MResult result) {
		this.result = result;
	}

	private PageRequest pRequest;

	public UserCall(PageRequest p) {
		this.pRequest = p;
	}

	public MResult Reg() {
		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_name")
				.toString())) {
			result.error(937301002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_pass")
				.toString())) {
			result.error(937301003);
		} else {

			final String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern pattern = Pattern.compile(pattern1);
			Matcher mat = pattern.matcher((pRequest.getReqMap().get("reg_name")
					.toString()));
			if (!mat.find()) {
				result.error(937301004);
			}
		}

		if (result.getFlag()) {

			if (DataTableManager.Get("user_info").upCount("login_name",
					pRequest.getReqMap().get("reg_name").toString()) > 0) {
				result.error(937301005);
			}

		}

		if (result.getFlag()) {

			String sCookieId = ComFunction.upUuid();
			String sUid = ComFunction.upUuid();

			MHashMap mHMap = new MHashMap();

			mHMap.inAdd("uid", sUid, "login_name",
					pRequest.getReqMap().get("reg_name"), "login_pass",
					pRequest.getReqMap().get("reg_pass"), "user_email",
					pRequest.getReqMap().get("reg_name"), "reg_date",
					FormatHelper.GetDateTime(), "cookie_id", sCookieId);
			DataTableManager.Get("user_info").inPut(mHMap);

			MHashMap mResult = new MHashMap();

			mResult.put("bgpm_user_cookieid", sCookieId);
			mResult.put("bgpm_user_name", pRequest.getReqMap().get("reg_name"));

			result.setResult(mResult);

		}

		return result;

	}

	public MResult Login() {

		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("login_name")
				.toString())) {
			result.error(937301002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap()
				.get("login_pass").toString())) {
			result.error(937301003);
		}

		if (result.getFlag()) {

			Map<String, Object> mUserInfo = DataTableManager.Get("user_info")
					.upOneMap("login_name",
							pRequest.getReqMap().get("login_name").toString(),
							"login_pass",
							pRequest.getReqMap().get("login_pass").toString());

			if (mUserInfo != null) {
				MHashMap mHashMap = new MHashMap();

				mHashMap.put("bgpm_user_cookieid", mUserInfo.get("cookie_id"));
				mHashMap.put("bgpm_user_name", mUserInfo.get("login_name"));

				result.setResult(mHashMap);

			} else {
				result.error(937301006);
			}
		}
		return result;

	}

	public MResult ChangeInfo(Map<String, Object> mUserInfo) {

		PageExec pExec = new PageExec();

		if (mUserInfo != null) {

			MHashMap mMap = new MHashMap();
			mMap.put("cookie_id", mUserInfo.get("cookie_id"));

			mMap.put("user_email", pRequest.getReqMap().get("user_email")
					.toString());
			mMap.put("phone_num", pRequest.getReqMap().get("phone_num")
					.toString());
			mMap.put("real_name", pRequest.getReqMap().get("real_name")
					.toString());

			DataTableManager.Get("user_info").inPost(mMap, "cookie_id");

		} else

		{
			result.error(937301007);
		}

		return result;
	}

	public MResult ChangePass(Map<String, Object> mUserInfo) {

		PageExec pExec = new PageExec();

		if (mUserInfo != null) {
			if(result.getFlag())
			{
				if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("login_pass")
						.toString())) {
					result.error(937301002);
				}
			}
			
			if(result.getFlag())
			{
				
				if(!mUserInfo.get("login_pass").equals(pRequest.getReqMap().get("old_login_pass")
						.toString()))
				{
					result.error(937301008);
				}
				
			}
			
			
			

			if (result.getFlag()) {
				MHashMap mMap = new MHashMap();
				mMap.put("cookie_id", mUserInfo.get("cookie_id"));

				mMap.put("login_pass", pRequest.getReqMap().get("login_pass")
						.toString());
				DataTableManager.Get("user_info").inPost(mMap, "cookie_id");
			}

		} else

		{
			result.error(937301007);
		}

		return result;
	}

}
