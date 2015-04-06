package com.srnpr.newsinfo.call;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.common.WebFunction;
import com.srnpr.zweb.helper.PoiHelper;
import com.srnpr.zweb.helper.ZipHelper;
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

	public MResult NewsList() {

		int iPageIndex = Integer.valueOf(pRequest.getReqMap().get("page_index")
				.toString());

		if (result.getFlag()) {
			result.setResult(DataTableManager.Get("info_news").upList("zid,uid,title,note,file_url,create_time",
					"-create_time", iPageIndex * 10, (iPageIndex + 1) * 10,
					new MHashMap()));
			// result.setMessage(sUid);

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

		String sExcel = pRequest.upRequestParam("excel");

		String sUid = pRequest.upRequestParam("speuid");
		String sAuctionId = pRequest.upRequestParam("auctionid");

		TableSupport ts = DataTableManager.Get("info_good");

		String sFlag = pRequest.upRequestParam("flag");
		if (!StringUtils.isEmpty(sFlag) && sFlag.equals("1")) {
			ts.inDelete("special_uid", sUid);
		}

		if (result.getFlag()) {

			String sFileUrl = CommonConst.Get(EComConst.root_realpath_baseweb)
					+ sExcel;
			List<List<String>> lData = new PoiHelper().upExcelData(sFileUrl);

			for (int i = 1, j = lData.size(); i < j; i++) {

				List<String> lCell = lData.get(i);
				MHashMap mIns = new MHashMap();

				mIns.put("uid", ComFunction.upUuid());

				mIns.put("code", lCell.get(0));
				mIns.put("name", lCell.get(1));
				mIns.put("special_uid", sUid);
				mIns.put("auction_uid", sAuctionId);
				mIns.put("texture", lCell.get(2));
				mIns.put("size", lCell.get(3));
				mIns.put("assess_price", lCell.get(4));
				mIns.put("success_price", lCell.get(5));
				mIns.put("note", lCell.get(6));
				ts.inPut(mIns);

			}
		}

		if (result.getFlag()) {

			ZipHelper zipHelper = new ZipHelper();

			String sZip = pRequest.upRequestParam("zip");

			String sFileUrl = CommonConst.Get(EComConst.root_realpath_baseweb)
					+ sZip;

			String sPath = CommonConst.Get(EComConst.root_realpath_baseweb)
					+ "/zzero/file/images_zip/";

			List<String> lFiles = zipHelper.upZipFiles(sFileUrl, sPath + sUid
					+ "/");

			for (String s : lFiles) {
				String sFileName = FilenameUtils.getName(s);

				Map<String, Object> mExit = ts.upOneMap("code",
						FilenameUtils.getBaseName(sFileName), "special_uid",
						sUid);

				if (mExit != null) {

					MHashMap mUpdate = new MHashMap();
					mUpdate.put("uid", mExit.get("uid"));
					mUpdate.put("file_url", "/zzero/file/images_zip/" + sUid
							+ "/" + sFileName);

					ts.inPost(mUpdate, "uid");

				}

			}

		}

		if (result.getFlag()) {
			result.setMessage(BInfo(937309001));
		}

		return result;
	}

}
