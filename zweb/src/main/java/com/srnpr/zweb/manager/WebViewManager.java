package com.srnpr.zweb.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.lang.StringUtils;
import org.omg.CORBA.PUBLIC_MEMBER;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.fiter.WebFieldsComparator;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebSource;
import com.srnpr.zweb.model.MWebView;

public class WebViewManager extends BaseClass implements IBaseManager,
		IBaseInit {

	public synchronized void Init() {

		TableSupport dViewHelper = DataTableManager.Get("zweb_view");

		TableSupport dFieldsHelper = DataTableManager.Get("zweb_fields");

		TableSupport dOptionsHelper = DataTableManager.Get("zweb_options");


		ConcurrentHashMap<String, String> mHashMap=ConfigCacheManager.GetHash("zdata.did_page_type");
		

		Enumeration<String> eViewEnumeration = mHashMap.keys();

		while (eViewEnumeration.hasMoreElements()) {
			String sViewKey = (String) eViewEnumeration.nextElement();

			String sOrderString="";
			int iDidPageType=Integer.valueOf(String.valueOf(mHashMap.get(sViewKey)));
			
			if(iDidPageType==416120101||iDidPageType==416120102||iDidPageType==416120105||iDidPageType==416120107||iDidPageType==416120109)
			{
				sOrderString="level_"+sViewKey;
			}
			
			
			for (Map<String, Object> mViewMap : dViewHelper.upList()) {
				MWebView mWebView = new MWebView();

				mWebView.setCode((String) mViewMap.get("code"));
				mWebView.setTableName((String) mViewMap.get("table_name"));
				mWebView.setViewName((String) mViewMap.get("view_name"));

				
				List<MWebFields> listFields=new ArrayList<MWebFields>();
				
				for (Map<String, Object> mFieldMap : dFieldsHelper
						.upList("*", sOrderString, -1, 0, "view_code", mWebView.getCode())) {

					MWebFields mFields = new MWebFields();

					mFields.setColumnName(String.valueOf(mFieldMap
							.get("column_name")));
					mFields.setFieldName(StringUtils.defaultIfEmpty(
							String.valueOf(mFieldMap.get("field_name")),
							mFields.getColumnName()));
					mFields.setDidFieldType(Integer.valueOf(String
							.valueOf(mFieldMap.get("did_field_type"))));
					mFields.setSourceCode(String.valueOf(mFieldMap
							.get("source_code")));
					
					
					
					if(mFieldMap.containsKey("source_code"))
					{
						MWebSource mSource=WebSourceManager.upWebSource(String.valueOf( mFieldMap.get("source_code")));
						if(mSource!=null)
						{
							
								if(iDidPageType==416120101||iDidPageType==416120105)
								{
									
									

									
										String sSqlString="select "+mSource.getFieldText()+" as source_text,"+mSource.getFieldValed()+" as source_value  from "+mSource.getFrom()+" where "+mSource.getWhereEdit();
									
									
									sSqlString=FormatHelper.FormatString(sSqlString, String.valueOf(mFieldMap.get("source_parameter")));

									
									mFields.setSourceparameter(sSqlString);
									
								}
								else
								{
									String sSqlString="select "+mSource.getFieldText()+" from "+mSource.getFrom()+" where "+mSource.getWhereBook();
									
									
									sSqlString=FormatHelper.FormatString(sSqlString, mFields.getColumnName());
									

									mFields.setSourceparameter(sSqlString);
									

								}
							
							
							
						}

					}
					
					
					
					
					
					
					if(!StringUtils.isEmpty(sOrderString)&&mFieldMap.containsKey(sOrderString))
					{
						mFields.setLevel(Integer.valueOf(String.valueOf( mFieldMap.get(sOrderString))));
					}
					else {
						mFields.setLevel(0);
					}
					
					
					
					
					
					
					
					//if(mFields.getFieldName().length()>3)
					//if(!mFields.getFieldName().equals("zid"))
					//listFields.add(mFields);
					
					
					
					if(mFields.getLevel()>0 )
					{
						listFields.add(mFields);
					}
				}
				
				
				  WebFieldsComparator comp=new WebFieldsComparator();
				  //调用排序方法
				  Collections.sort(listFields,comp);
				  
				
				
				
				
				mWebView.setFields(listFields);
				
				for (Map<String, Object> mOptionView : dOptionsHelper
						.upListListByQuery("view_code", mWebView.getCode())) {

					MWebOptions mOptions = new MWebOptions();
					mOptions.setName(String.valueOf(mOptionView.get("name")));
					mOptions.setDidPageType(Integer.valueOf(String
							.valueOf(mOptionView.get("did_page_type"))));
					mOptions.setDidOptionType(Integer.valueOf(String
							.valueOf(mOptionView.get("did_option_type"))));
					mOptions.setParams(String.valueOf(mOptionView.get("params")));
					mOptions.setUid(String.valueOf(mOptionView.get("uid")));
					mWebView.getOptions().add(mOptions);
				}

				ConstStatic.CONST_WEBVIEW_HASH
						.put(mWebView.getCode()+":"+iDidPageType, mWebView);

			}
		}

	}

	public synchronized static void recheckData() {

		Enumeration<String> eKey = ConstStatic.CONST_WEBVIEW_HASH.keys();

		while (eKey.hasMoreElements()) {
			String sCode = (String) eKey.nextElement();
			
			MWebView mView= ConstStatic.CONST_WEBVIEW_HASH.get(sCode);

			String sTableName = mView
					.getTableName();

			String sSql = "insert into zweb_fields(uid,view_code,column_name,field_name,level_grid,level_add,level_edit,level_book,level_inquire) select replace(uuid(),'-',''),'"
					+ mView.getCode()
					+ "',column_name,note,100+orderid,100+orderid,100+orderid,100+orderid,100+orderid from zdata_column where table_name={0} and column_name not in(select column_name from zweb_fields where view_code='"
					+ mView.getCode() + "')";

			DataTableManager.Get(sTableName).doExec(sSql, sTableName);

		}

	}
	
	public synchronized static void recheckData(String sViewCode) {

			String sCode = (String) sViewCode;
			
			String sTableName = DataTableManager.Get("zweb_view").upOneMap("code",sCode).get("table_name").toString();
			
			
			String sSql = "insert into zweb_fields(uid,view_code,column_name,field_name,level_grid,level_add,level_edit,level_book,level_inquire) select replace(uuid(),'-',''),'"
					+ sCode
					+ "',column_name,note,100+orderid,100+orderid,100+orderid,100+orderid,100+orderid from zdata_column where table_name={0} and column_name not in(select column_name from zweb_fields where view_code='"
					+ sCode + "')";
			DataTableManager.Get(sTableName).doExec(sSql, sTableName);

		

	}
	
	
	
	
	
	
	
	

	public static MWebView upView(String sKey, int iPageType) {

		return ConstStatic.CONST_WEBVIEW_HASH.get(sKey+":"+iPageType);
	}

	

	public boolean Refresh() {

		return false;
	}

}
