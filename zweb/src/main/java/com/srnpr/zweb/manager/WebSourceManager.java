package com.srnpr.zweb.manager;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.model.MWebSource;

public class WebSourceManager extends BaseClass implements IBaseManager, IBaseInit {

	public synchronized void Init() {

		TableSupport dSourceHelper = DataTableManager.Get("zweb_source");

		for (Map<String, Object> mSourceMap : dSourceHelper.upList()) {
			MWebSource mSource = new MWebSource();
			mSource.setSourceCode(String.valueOf(mSourceMap.get("source_code")));
			mSource.setSourceName(String.valueOf(mSourceMap.get("source_name")));
			mSource.setFieldText(String.valueOf(mSourceMap.get("field_text")));
			mSource.setFieldValed(String.valueOf(mSourceMap.get("field_value")));
			mSource.setFrom(String.valueOf(mSourceMap.get("from")));
			mSource.setWhereBook(String.valueOf(mSourceMap.get("where_book")));
			mSource.setWhereEdit(String.valueOf(mSourceMap.get("where_edit")));
			mSource.setDidSourceType(Integer.valueOf(String.valueOf(mSourceMap.get("did_source_type"))));
			ConstStatic.CONST_WEBSOURCE_HASH.put(mSource.getSourceCode(), mSource);
		}

	}
	
	
	
	public static MWebSource upWebSource(String sKey)
	{
		return ConstStatic.CONST_WEBSOURCE_HASH.get(sKey);
	}
	
	
	
	

	public boolean Refresh() {

		return false;
	}

}
