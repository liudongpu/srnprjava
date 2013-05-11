package com.srnpr.newsinfo.call;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
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
		
		
		String sUid=pRequest.getReqMap().get("uid")
				.toString();
		
		
		if(result.getFlag())
		{
			result.setResult(DataTableManager.Get("user_comment")
			.upListListByQuery("info_uid",sUid));
			result.setMessage(sUid);

		}
		
		
		

		return result;
	}

}
