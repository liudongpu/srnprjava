package com.srnpr.yinfo.call;

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

		if (!StringUtils
				.isNotEmpty(pRequest.getReqMap().get("name").toString())) {
			result.error(965901002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("pass")
				.toString())) {
			result.error(965901003);
		} else {

			final String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern pattern = Pattern.compile(pattern1);
			Matcher mat = pattern.matcher((pRequest.getReqMap().get("name")
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

			if (DataTableManager.Get("y_user").upCount("name",
					pRequest.getReqMap().get("name").toString()) > 0) {
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

			String sRegName = pRequest.getReqMap().get("name").toString();

			mHMap.inAdd("uid", sUid, "name", sRegName, "pass",
					pRequest.getReqMap().get("pass"), "email",
					sRegName, "regdate", FormatHelper.GetDateTime(),
					"cookieid", sCookieId);
			
			if (StringUtils.isNotEmpty(pRequest.upRequestParam("phone"))) {
				mHMap.put("phone", pRequest.upRequestParam("phone"));
			}

			mHMap.inAdd("username", StringUtils.substringBefore(sRegName, "@"));

			DataTableManager.Get("y_user").inPut(mHMap);

			MHashMap mResult = new MHashMap();

			mResult.put("yinxl_user_cookieid", sCookieId);
			mResult.put("yinxl_user_name",mHMap.get("username"));

			result.setResult(mResult);

		}

		return result;
	}

}
