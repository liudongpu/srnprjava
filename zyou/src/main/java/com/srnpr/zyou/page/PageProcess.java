
package com.srnpr.zyou.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.enumer.EWebSet;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.model.MWebView;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.ShowProcess;

public class PageProcess extends ShowProcess implements IWebProcess
{

	public MWebPage Process(PageRequest wRequest)
	{

		
		if(wRequest.upSet(EWebSet.Url_View).equals("system_fields")&&wRequest.upSet(EWebSet.Url_Target).equals("list"))
		{
			
			
			MWebView mView=WebViewManager.Get(wRequest.upSet(EWebSet.Url_View));
			
			String sTableName=mView.getTableName();
			
			String sSql="insert into zweb_fields(view_code,column_name,field_name) select '"
			+mView.getCode()+"',column_name,note from zdata_column where table_name={0} and column_name not in(select column_name from zdata_column where view_code='"+mView.getCode()+"')"
			;
			
			
			//DataTableManager.Get(mView.getTableName()).doExec(sSql, sTableName);
		
			
			
			
			/*
			 * 
			 * 
insert into zweb_fields
select 0,'system_fields',column_name,note,0,'','' from zdata_column where table_name=(select table_name from zweb_view where code='system_fields')
			 */
			
			
		}
		
		
		
		return super.ShowHtml(wRequest);
	}

}
