package com.srnpr.newsinfo.call;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.common.WebFunction;
import com.srnpr.zweb.helper.PoiHelper;
import com.srnpr.zweb.page.PageRequest;

public class InfoCall extends BaseClass {

	private MResult result = new MResult();

	public MResult getResult() {
		return result;
	}

	public void setResult(MResult result) {
		this.result = result;
	}

	private PageRequest pRequest;

	public InfoCall(PageRequest p) {
		this.pRequest = p;
	}

	public MResult CommentList() {

		String sUid = pRequest.getReqMap().get("uid").toString();

		if (result.getFlag()) {
			result.setResult(DataTableManager
					.Get("user_comment")
					.upListListOrder(
							"*,(select real_name from user_info where uid=user_comment.user_uid) as username,(select userlevel_cid from user_info where uid=user_comment.user_uid) as userlevel",
							"-comment_date", "info_uid", sUid));
			result.setMessage(sUid);

		}

		return result;
	}

	public MResult CommentSubmit(Map<String, Object> mUserInfo) {

		String sUid = pRequest.getReqMap().get("uid").toString();

		if (result.getFlag()) {

			MHashMap mHMap = new MHashMap();

			mHMap.inAdd("uid", ComFunction.upUuid(), "user_uid", mUserInfo
					.get("uid"), "info_title", pRequest.getReqMap()
					.get("title"), "info_url", pRequest.getReqMap().get("url"),
					"comment_date", FormatHelper.GetDateTime(), "note",
					pRequest.getReqMap().get("text"), "info_uid", pRequest
							.getReqMap().get("uid"));
			DataTableManager.Get("user_comment").inPut(mHMap);
			result.setResult(sUid);
		}

		return result;
	}

	public MResult CollectSubmit(Map<String, Object> mUserInfo) {

		String sUid = pRequest.getReqMap().get("uid").toString();

		if (result.getFlag()) {

			MHashMap mHMap = new MHashMap();

			mHMap.inAdd("uid", ComFunction.upUuid(), "user_uid", mUserInfo
					.get("uid"), "info_title", pRequest.getReqMap()
					.get("title"), "info_url", pRequest.getReqMap().get("url"),
					"collect_date", FormatHelper.GetDateTime(), "info_uid",
					pRequest.getReqMap().get("uid"));
			DataTableManager.Get("user_collect").inPut(mHMap);
			result.setResult(sUid);
		}

		return result;
	}

	public MResult updateGoods() {

		String sFileUrl = CommonConst.Get(EComConst.root_realpath_baseweb)
				+ pRequest.upRequestParam("excel");

		String sUid = pRequest.upRequestParam("speuid");

		List<List<String>> lData = new PoiHelper().upExcelData(sFileUrl);

		for (int i = 0, j = lData.size(); i < j; i++) {

		}

		return result;
	}

}
