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
import com.srnpr.zdata.model.MDataTable;
import com.srnpr.zweb.helper.MailSupport;
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

		String sPhoneNUmber = "";

		if (result.getFlag()) {
			if (StringUtils.isNotEmpty(pRequest.upRequestParam("reg_phone"))) {
				sPhoneNUmber = pRequest.upRequestParam("reg_phone");

				if (!StringUtils.isNumeric(sPhoneNUmber)
						|| sPhoneNUmber.length() != 11) {
					result.error(937301009);
				}

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

			String sRegName = pRequest.getReqMap().get("reg_name").toString();

			mHMap.inAdd("uid", sUid, "login_name", sRegName, "login_pass",
					pRequest.getReqMap().get("reg_pass"), "user_email",
					sRegName, "reg_date", FormatHelper.GetDateTime(),
					"cookie_id", sCookieId);

			mHMap.inAdd("real_name", StringUtils.substringBefore(sRegName, "@"));

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

			if (mUserInfo == null) {
				mUserInfo = DataTableManager.Get("user_info").upOneMap(
						"phone_num",
						pRequest.getReqMap().get("login_name").toString(),
						"login_pass",
						pRequest.getReqMap().get("login_pass").toString());
			}

			if (mUserInfo != null) {
				MHashMap mHashMap = new MHashMap();

				mHashMap.put("bgpm_user_cookieid", mUserInfo.get("cookie_id"));
				mHashMap.put("bgpm_user_name", mUserInfo.get("login_name"));
				mHashMap.put("bgpm_user_levelid",
						mUserInfo.get("userlevel_cid"));

				result.setResult(mHashMap);

			} else {
				result.error(937301006);
			}
		}
		return result;

	}

	public MResult Forget() {

		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("login_name")
				.toString())) {
			result.error(937301002);
		}

		if (result.getFlag()) {
			Map<String, Object> mUserInfo = DataTableManager.Get("user_info")
					.upOneMap("login_name",
							pRequest.getReqMap().get("login_name").toString());

			if (mUserInfo != null) {
				MHashMap mHashMap = new MHashMap();

				MailSupport mailSupport = new MailSupport();

				StringBuilder sb = new StringBuilder();

				sb.append("亲爱的博观拍卖用户：<br/><br/>");
				sb.append("你正在通过邮箱找回你的帐号登录密码，请点击以下链接重设你的密码：<br/><br/>");

				String sLink = "http://www.boguanpaimai.com/newsinfo/repass-repass?code="
						+ mUserInfo.get("cookie_id");

				sb.append("<a href=\"" + sLink + "\">" + sLink
						+ "</a><br/><br/> ");

				sb.append("若点击无效，请将该链接复制到浏览器地址栏中并直接访问。<br/><br/>  ");

				mailSupport.sendMail(mUserInfo.get("login_name").toString(),
						"博观拍卖找回密码邮件", sb.toString(), "smtp.exmail.qq.com",
						"bgpmreset@qq.srnpr.com", "bgpm2015");

				result.setResult(mHashMap);

			} else {
				result.error(937301006);
			}

		}
		return result;

	}

	public MResult Repass() {

		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("login_pass")
				.toString())) {
			result.error(937301002);
		}

		if (result.getFlag()) {

			Map<String, Object> mUserInfo = DataTableManager.Get("user_info")
					.upOneMap("cookie_id",
							pRequest.getReqMap().get("cookie_id").toString());

			if (mUserInfo != null) {
				MHashMap mHashMap = new MHashMap();

				MHashMap mMap = new MHashMap();
				mMap.put("cookie_id", ComFunction.upUuid());
				mMap.put("zid", mUserInfo.get("zid"));
				mMap.put("login_pass", pRequest.getReqMap().get("login_pass")
						.toString());
				DataTableManager.Get("user_info").inPost(mMap, "zid");

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

	public MResult BidSave(Map<String, Object> mUserInfo) {

		if (mUserInfo != null
				&& DataTableManager.Get("user_bid").upCount("user_uid",
						mUserInfo.get("uid")) == 0) {

			MHashMap mMap = new MHashMap();
			mMap.put("uid", ComFunction.upUuid());
			mMap.put("user_uid", mUserInfo.get("uid"));
			mMap.put("login_name", mUserInfo.get("login_name"));

			mMap.put("phone_num", "");

			mMap.put("user_name", pRequest.getReqMap().get("user_name")
					.toString());
			mMap.put("user_phone", pRequest.getReqMap().get("user_phone")
					.toString());
			mMap.put("user_address", pRequest.getReqMap().get("user_address")
					.toString());
			mMap.put("bank_no", pRequest.getReqMap().get("bank_no").toString());
			mMap.put("bank_home", pRequest.getReqMap().get("bank_home")
					.toString());
			mMap.put("bank_name", pRequest.getReqMap().get("bank_name")
					.toString());
			mMap.put("card_one", pRequest.getReqMap().get("card_one")
					.toString());
			mMap.put("card_two", pRequest.getReqMap().get("card_two")
					.toString());
			mMap.put("create_time", FormatHelper.GetDateTime());
			mMap.put("update_time", FormatHelper.GetDateTime());

			DataTableManager.Get("user_bid").inPut(mMap);

			MHashMap mLog = new MHashMap();
			mLog.put("uid", ComFunction.upUuid());
			mLog.put("user_uid", mUserInfo.get("uid"));
			mLog.put("create_time", FormatHelper.GetDateTime());
			DataTableManager.Get("log_bid").inPut(mLog);

		} else {
			result.error(937301007);
		}

		return result;

	}

	public MResult BidUpdate(Map<String, Object> mUserInfo) {

		if (mUserInfo != null
				&& DataTableManager.Get("user_bid").upCount("user_uid",
						mUserInfo.get("uid")) > 0) {

			MHashMap mUpdate = new MHashMap();

			mUpdate.put("user_uid", mUserInfo.get("uid"));

			mUpdate.put("update_time", FormatHelper.GetDateTime());

			DataTableManager.Get("user_bid").inPost(mUpdate, "user_uid");

			MHashMap mLog = new MHashMap();
			mLog.put("uid", ComFunction.upUuid());
			mLog.put("user_uid", mUserInfo.get("uid"));
			mLog.put("create_time", FormatHelper.GetDateTime());
			DataTableManager.Get("log_bid").inPut(mLog);
			

		} else {
			result.error(937301007);
		}
		return result;
	}

	public MResult EntSave(Map<String, Object> mUserInfo) {

		if (mUserInfo != null) {
			Map<String, Object> mGoodMap = DataTableManager.Get("info_good")
					.upOneMap("code",
							pRequest.getReqMap().get("good_code").toString());

			if (mGoodMap != null) {

				MHashMap mMap = new MHashMap();
				mMap.put("uid", ComFunction.upUuid());
				mMap.put("user_uid", mUserInfo.get("uid"));
				mMap.put("login_name", mUserInfo.get("login_name"));

				mMap.put("user_name", pRequest.getReqMap().get("user_name")
						.toString());
				mMap.put("user_number", pRequest.getReqMap().get("user_number")
						.toString());
				mMap.put("user_phone", pRequest.getReqMap().get("user_phone")
						.toString());
				mMap.put("good_code", pRequest.getReqMap().get("good_code")
						.toString());
				mMap.put("good_price", pRequest.getReqMap().get("good_price")
						.toString());

				mMap.put("good_name", mGoodMap.get("name").toString());
				mMap.put("good_file", mGoodMap.get("file_url").toString());
				mMap.put("create_time", FormatHelper.GetDateTime());

				DataTableManager.Get("user_ent").inPut(mMap);
			} else {
				result.error(937309003);
			}

		} else {
			result.error(937301007);
		}

		return result;

	}

	public MResult SendDel(Map<String, Object> mUserInfo) {

		if (mUserInfo != null) {

			String sUid = pRequest.getReqMap().get("id").toString();

			if (StringUtils.isNotBlank(sUid)) {

				DataTableManager.Get("user_send").inDelete("uid", sUid);

			}

		} else {
			result.error(937301007);
		}

		return result;
	}
	
	
	
	public MResult EntDel(Map<String, Object> mUserInfo) {

		if (mUserInfo != null) {

			String sUid = pRequest.getReqMap().get("id").toString();

			if (StringUtils.isNotBlank(sUid)) {

				DataTableManager.Get("user_ent").inDelete("uid", sUid);

			}

		} else {
			result.error(937301007);
		}

		return result;
	}
	

	public MResult SendSave(Map<String, Object> mUserInfo) {

		if (mUserInfo != null) {

			MHashMap mMap = new MHashMap();
			mMap.put("uid", ComFunction.upUuid());
			mMap.put("user_uid", mUserInfo.get("uid"));
			mMap.put("login_name", mUserInfo.get("login_name"));

			mMap.put("user_name", pRequest.getReqMap().get("user_name")
					.toString());
			mMap.put("user_phone", pRequest.getReqMap().get("user_phone")
					.toString());
			mMap.put("user_email", pRequest.getReqMap().get("user_email")
					.toString());
			mMap.put("good_name", pRequest.getReqMap().get("good_name")
					.toString());
			mMap.put("good_author", pRequest.getReqMap().get("good_author")
					.toString());
			mMap.put("good_size", pRequest.getReqMap().get("good_size")
					.toString());
			mMap.put("good_weight", pRequest.getReqMap().get("good_weight")
					.toString());
			mMap.put("good_price", pRequest.getReqMap().get("good_price")
					.toString());
			mMap.put("photo_one", pRequest.getReqMap().get("photo_one")
					.toString());
			mMap.put("photo_two", pRequest.getReqMap().get("photo_two")
					.toString());
			mMap.put("photo_three", pRequest.getReqMap().get("photo_three")
					.toString());

			mMap.put("create_time", FormatHelper.GetDateTime());

			DataTableManager.Get("user_send").inPut(mMap);

		} else {
			result.error(937301007);
		}

		return result;

	}

	public MResult BidCheck(Map<String, Object> mUserInfo) {
		if (mUserInfo != null) {

			result.setResult(DataTableManager.Get("user_bid").upCount(
					"user_uid", mUserInfo.get("uid")));

		} else {
			result.error(937301007);
		}

		return result;
	}

	public MResult ChangePass(Map<String, Object> mUserInfo) {

		PageExec pExec = new PageExec();

		if (mUserInfo != null) {
			if (result.getFlag()) {
				if (!StringUtils.isNotEmpty(pRequest.getReqMap()
						.get("login_pass").toString())) {
					result.error(937301002);
				}
			}

			if (result.getFlag()) {

				if (!mUserInfo.get("login_pass").equals(
						pRequest.getReqMap().get("old_login_pass").toString())) {
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
