package com.srnpr.zweb.page;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.support.DataSupport;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zweb.manager.WebViewManager;
import com.srnpr.zweb.model.MPageNav;

public class PageExec extends BaseClass {

	public Object upDataFromFieldParams(String sSqlString) {
		int iFromIndex = sSqlString.indexOf("from");
		String sRightString = sSqlString.substring(iFromIndex + 4).trim();
		String sTableName = sRightString
				.substring(0, sRightString.indexOf(" "));
		TableSupport tSupport = DataTableManager.Get(sTableName);

		List<Map<String, Object>> rList = tSupport.upListBySql(sSqlString);

		return rList;
	}

	public Object upConfigValue(String sConfigKey) {
		return BConfig(sConfigKey);
	}

	public Object upData(String sTableName, String... sArgs) {
		return DataTableManager.Get(sTableName).upListListByQuery(sArgs);
	}

	public Object upDataList(String sTableName, String sFields, String sOrder,
			int start, int end, Object... oArgs) {
		return DataTableManager.Get(sTableName).upList(sFields, sOrder, start,
				end, oArgs);
	}

	public Object upDataOne(String sTableName, String... oArgs) {

		return DataTableManager.Get(sTableName).upListListByQuery(oArgs).get(0);
	}

	public Object upDataOrder(String sTableName, String sOrder, String... sArgs) {
		return DataTableManager.Get(sTableName).upListListOrder("", sOrder,
				sArgs);
	}

	public Map<String, Object> upDataOneQuery(String sTableName, String sWhere,
			String... args) {
		return DataTableManager.Get(sTableName).upOneQuery(sWhere, args);
	}

	
	
	public MPageNav upPageNav(String sTableName, String sFields, String sOrder,
			Object... oArgs) {
		return upPageNavQuery(sTableName,sFields,"",sOrder,oArgs);
	}
	
	
	public MPageNav upPageNavQuery(String sTableName, String sFields,String sWhere, String sOrder,
			Object... oArgs) {
		MPageNav mPageNav = new MPageNav();

		if (StringUtils.isNotEmpty(upRequest().getParameter("z_page_index"))) {
			mPageNav.setPageIndex(Integer.valueOf(upRequest().getParameter(
					"z_page_index").toString()));
		}
		if (StringUtils.isNotEmpty(upRequest().getParameter("z_page_count"))) {
			mPageNav.setPageCount(Integer.valueOf(upRequest().getParameter(
					"z_page_count").toString()));
		}
		if (StringUtils.isNotEmpty(upRequest().getParameter("z_page_size"))) {
			mPageNav.setPageSize(Integer.valueOf(upRequest().getParameter(
					"z_page_size").toString()));
		}

		if (mPageNav.getPageCount() < 0) {
			mPageNav.setPageCount(DataTableManager.Get(sTableName).upListCount(
					oArgs));
		}
		
		mPageNav.setPageData(
		DataTableManager.Get(sTableName).upListAll(sFields,sWhere, sOrder, (mPageNav.getPageIndex()-1)*mPageNav.getPageSize(),
				mPageNav.getPageIndex()*mPageNav.getPageSize(), oArgs));
		

		return mPageNav;
	}

	public HttpServletRequest upRequest() {
		return ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();

	}

}
