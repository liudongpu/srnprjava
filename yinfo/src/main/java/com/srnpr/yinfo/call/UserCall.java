package com.srnpr.yinfo.call;

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
import com.srnpr.zweb.page.PageRequest;

public class UserCall extends BaseClass {

	private MResult result = new MResult();
	private PageRequest pRequest;

	public UserCall(PageRequest p) {
		this.pRequest = p;
	}

	public MResult callReg() {

		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_name")
				.toString())) {
			result.error(965901002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_pass")
				.toString())) {
			result.error(965901003);
		} else {

			final String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern pattern = Pattern.compile(pattern1);
			Matcher mat = pattern.matcher((pRequest.getReqMap().get("reg_name")
					.toString()));
			if (!mat.find()) {
				result.error(965901004);
			}
		}

		String sPhoneNUmber = "";

		if (result.getFlag()) {
			if (StringUtils.isNotEmpty(pRequest.upRequestParam("phone"))) {
				sPhoneNUmber = pRequest.upRequestParam("phone");

				if (!StringUtils.isNumeric(sPhoneNUmber)
						|| sPhoneNUmber.length() != 11) {
					result.error(965901009);
				}

			}
		}

		if (result.getFlag()) {

			if (DataTableManager.Get("y_user").upCount("uname",
					pRequest.getReqMap().get("reg_name").toString()) > 0) {
				result.error(965901005);
			}

		}

		if (result.getFlag()) {
			if (StringUtils.isNotEmpty(pRequest.upRequestParam("phone"))) {
				if (DataTableManager.Get("y_user").upCount("phone",
						pRequest.getReqMap().get("phone").toString()) > 0) {
					result.error(965901010);
				}

			}

		}

		if (result.getFlag()) {

			String sCookieId = ComFunction.upUuid();
			String sUid = ComFunction.upUuid();

			MHashMap mHMap = new MHashMap();

			String sRegName = pRequest.getReqMap().get("reg_name").toString();

			mHMap.inAdd("uid", sUid, "uname", sRegName, "pass", pRequest
					.getReqMap().get("reg_pass"), "email", sRegName, "regdate",
					FormatHelper.GetDateTime(), "cookieid", sCookieId);

			if (StringUtils.isNotEmpty(pRequest.upRequestParam("phone"))) {
				mHMap.put("phone", pRequest.upRequestParam("phone"));
			}

			mHMap.inAdd("username", StringUtils.substringBefore(sRegName, "@"));

			DataTableManager.Get("y_user").inPut(mHMap);

			MHashMap mResult = new MHashMap();

			mResult.put("yinxl_user_cookieid", sCookieId);
			mResult.put("yinxl_user_name", mHMap.get("username"));

			result.setResult(mResult);

		}

		return result;
	}

	public MResult callLogin() {

		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("login_name")
				.toString())) {
			result.error(965901002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap()
				.get("login_pass").toString())) {
			result.error(965901003);
		}

		if (result.getFlag()) {

			Map<String, Object> mUserInfo = DataTableManager.Get("y_user")
					.upOneMap("uname",
							pRequest.getReqMap().get("login_name").toString(),
							"pass",
							pRequest.getReqMap().get("login_pass").toString());

			if (mUserInfo != null) {
				MHashMap mHashMap = new MHashMap();

				mHashMap.put("yinxl_user_cookieid", mUserInfo.get("cookieid"));
				mHashMap.put("yinxl_user_name", mUserInfo.get("username"));
				mHashMap.put("yinxl_user_levelid", mUserInfo.get("level_cid"));

				result.setResult(mHashMap);

			} else {
				result.error(965901006);
			}
		}
		return result;

	}

	public MResult callChangeInfo() {
		String sPhoneNUmber = "";

		if (result.getFlag()) {
			if (StringUtils.isNotEmpty(pRequest.upRequestParam("phone"))) {
				sPhoneNUmber = pRequest.upRequestParam("phone");

				if (!StringUtils.isNumeric(sPhoneNUmber)
						|| sPhoneNUmber.length() != 11) {
					result.error(965901009);
				}

			}
		}

		if (result.getFlag()) {

			MHashMap mHashMap = new MHashMap();

			mHashMap.put("phone", sPhoneNUmber);
			mHashMap.put("username", pRequest.upRequestParam("username"));
			mHashMap.put("cookieid", pRequest.upRequestParam("cookieid"));

			DataTableManager.Get("y_user").inPost(mHashMap, "cookieid");

		}

		return result;
	}
	
	
	public MResult callChangePass(Map<String, Object> mUserInfo) {
		
		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("oldpass")
				.toString())) {
			result.error(965901011);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap()
				.get("userpass").toString())) {
			result.error(965901012);
		}
		else if (!pRequest.getReqMap()
				.get("userpass").toString().equals(pRequest.getReqMap()
				.get("userpass2").toString())) {
			result.error(965901013);
		}
		if(result.getFlag())
		{
			
			if(!mUserInfo.get("pass").equals(pRequest.getReqMap().get("oldpass")
					.toString()))
			{
				result.error(965901008);
			}
			
		}
		

		if (result.getFlag()) {

			MHashMap mHashMap = new MHashMap();
			mHashMap.put("pass", pRequest.upRequestParam("userpass"));
			mHashMap.put("cookieid", pRequest.upRequestParam("cookieid"));
			DataTableManager.Get("y_user").inPost(mHashMap, "cookieid");

		}

		return result;
	}
	
	
	
	

}
