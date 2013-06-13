package com.srnpr.yinfo.send;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;

public class LogSend extends BaseClass {

	
	
	public void addLog(int lLogId,String...  sContents)
	{
		
		 TableSupport tSupport= DataTableManager.Get("y_log");
		 
		MHashMap mHashMap=new MHashMap();
		
		mHashMap.put("uid",ComFunction.upUuid());
		mHashMap.put("type_logid",String.valueOf(lLogId));
		mHashMap.put("typedesc", BConfig(String.valueOf(lLogId)));
		
		mHashMap.put("createtime", FormatHelper.GetDateTime());
		mHashMap.put("content", StringUtils.join(sContents,"    "));
		 
		 
		 tSupport.inPut(mHashMap);

	}
	
	
	
}
