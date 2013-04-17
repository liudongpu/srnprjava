
package com.srnpr.zweb.manager;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.model.MWebFields;
import com.srnpr.zweb.model.MWebOptions;
import com.srnpr.zweb.model.MWebView;

public class WebViewManager extends BaseClass implements IBaseManager,
		IBaseInit
{

	public void Init()
	{

		TableSupport dViewHelper = DataTableManager.Get("zweb_view");

		TableSupport dFieldsHelper = DataTableManager.Get("zweb_fields");

		TableSupport dOptionsHelper = DataTableManager.Get("zweb_options");

		for (Map<String, Object> mViewMap : dViewHelper.upList())
		{
			MWebView mWebView = new MWebView();

			mWebView.setCode((String) mViewMap.get("code"));
			mWebView.setTableName((String) mViewMap.get("table_name"));
			mWebView.setViewName((String) mViewMap.get("view_name"));

			for (Map<String, Object> mFieldMap : dFieldsHelper.upListListByQuery("view_code", mWebView.getCode()))
			{

				MWebFields mFields = new MWebFields();

				mFields.setFieldName(String.valueOf(mFieldMap.get("field_name")));
				mFields.setColumnName(String.valueOf(mFieldMap.get("column_name")));
				mFields.setDidFieldType(Integer.valueOf(String.valueOf(mFieldMap.get("did_field_type"))));
				mFields.setSourceCode(String.valueOf(mFieldMap.get("source_code")));
				
				mFields.setLevelList(Integer.valueOf(String.valueOf(mFieldMap.get("level_list"))));
				mFields.setLevelPost(Integer.valueOf(String.valueOf(mFieldMap.get("level_post"))));
				mFields.setLevelPut(Integer.valueOf(String.valueOf(mFieldMap.get("level_put"))));
				mFields.setLevelQuery(Integer.valueOf(String.valueOf(mFieldMap.get("level_query"))));
				mFields.setLevelShow(Integer.valueOf(String.valueOf(mFieldMap.get("level_show"))));
				

				mWebView.getFields().add(mFields);
			}
			
			for (Map<String, Object> mOptionView : dOptionsHelper.upListListByQuery("view_code", mWebView.getCode()))
			{

				

				MWebOptions mOptions=new MWebOptions();
				mOptions.setName(String.valueOf(mOptionView.get("name")));
				mOptions.setDidPageType(Integer.valueOf(String.valueOf(mOptionView.get("did_page_type"))));
				mOptions.setDidOptionType(Integer.valueOf(String.valueOf(mOptionView.get("did_option_type"))));
				mOptions.setParams(String.valueOf(mOptionView.get("params")));
				mOptions.setUid(String.valueOf(mOptionView.get("uid")));
				
				
				
				

				mWebView.getOptions().add(mOptions);
			}
			
			ConstStatic.CONST_WEBVIEW_HASH.put(mWebView.getCode(), mWebView);

		}

	}

	public static MWebView Get(String sKey)
	{

		return ConstStatic.CONST_WEBVIEW_HASH.get(sKey);
	}

	public boolean Refresh()
	{

		return false;
	}

}
