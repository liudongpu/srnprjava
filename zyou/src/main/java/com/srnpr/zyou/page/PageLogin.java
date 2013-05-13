package com.srnpr.zyou.page;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;

public class PageLogin extends BaseClass {

	public MResult UserLogin(MHashMap mReq) {
		MResult mReturn = new MResult();
		String sUserName = null;
		String sPass = null;
		if (mReturn.getFlag()) {
			

			if (mReq.containsKey("user_name")) {
				sUserName = mReq.get("user_name").toString();
			}
			
			if(!StringUtils.isNotEmpty(sUserName))
			{
				mReturn.error(970101002);
			}
			
		}
		
		if (mReturn.getFlag()) {
			if (mReq.containsKey("user_pass")) {
				sPass = mReq.get("user_pass").toString();
			}
			
			if(!StringUtils.isNotEmpty(sPass))
			{
				mReturn.error(970101002);
			}
			
		}
		
		
		if(mReturn.getFlag())
		{
			
			
			Map<String, Object> mRHashMap= DataTableManager.Get("you_user").upOneMap("user_name",sUserName,"user_pass",sPass);
			
			if(mRHashMap!=null)
			{
				mReturn.setResult(mRHashMap);
				
				mReturn.setRun("login_success");
			}
			else
			{
				mReturn.error(970101006);
			}
			
			
			
			
			
			
		}
		
		

		return mReturn;
	}

}