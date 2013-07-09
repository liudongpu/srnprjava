
package com.srnpr.zyou.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.mchange.v2.c3p0.impl.NewPooledConnection;
import com.srnpr.zcom.init.InitRoot;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageExec;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.WebBaseProcess;

public class PageProcess extends WebBaseProcess implements IWebProcess
{

	public MWebPage Process(PageRequest wRequest)
	{
		if(wRequest.upSet(EWebSet.Url_Target).indexOf("upload")<0&& wRequest.upSet(EWebSet.Url_Target).indexOf("login")<0)
		{
			PageExec pExec=new PageExec();
			if(pExec.upSession("zyou_login_user_name")==null)
			{
				wRequest.inSet(EWebSet.Url_Target, "login");
				wRequest.inSet(EWebSet.Url_View, "notlogin");
			}
		}
		return super.ShowHtml(wRequest);
	}

	public MResult result(PageRequest pRequest) {
		
		
		
		if(pRequest.getParamsMap().containsKey("func_do"))
		{
			
			if(pRequest.getParamsMap().get("func_do").equals("refreshdata"))
			{
				String sViewNameString=String.valueOf(pRequest.getParamsMap().get("view_code"));
				WebViewManager.recheckData(sViewNameString);

			}
			else if(pRequest.getParamsMap().get("func_do").equals("refreshoptions"))
			{
				String sViewNameString=String.valueOf(pRequest.getParamsMap().get("view_code"));
				WebViewManager.recheckOptions(sViewNameString);
				
				
				
				
				
			}
			else if(pRequest.getParamsMap().get("func_do").equals("refreshcache"))
			{
				new InitRoot().Init();
			}else if(pRequest.getParamsMap().get("func_do").equals("login"))
			{
				return new PageLogin().UserLogin(pRequest.getReqMap());
				
				//new InitRoot().Init();
			}
			
			
		}
		else {
			return super.showResult(pRequest);
		}
		MResult mResult=new MResult();
		//mResult.error(111, "err");
		return mResult;

	}

}
