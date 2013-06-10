package com.srnpr.yinfo.page;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.util.StringUtil.StringsIterator;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zweb.i.IPageMethod;
import com.srnpr.zweb.model.MPageNav;
import com.srnpr.zweb.page.PageExec;

public class PageMethod extends BaseClass implements IPageMethod {

	private static MHashMap hClassMap = new MHashMap();

	private void checkClassMap() {
		if (hClassMap == null || hClassMap.size() < 1) {

			for (Map<String, Object> map : DataTableManager.Get("you_class")
					.upList()) {
				hClassMap.put(map.get("code").toString(), map.get("name")
						.toString());
			}

			for (Map<String, Object> map : DataTableManager.Get("y_area")
					.upListListByQuery("level", "3")) {
				hClassMap.put("area_" + map.get("code").toString(),
						map.get("name").toString());
			}
		}
	}

	public MHashMap upClassByFather(String sFather) {
		MHashMap mReturnHashMap = new MHashMap();
		checkClassMap();

		for (String s : hClassMap.upKeys()) {
			if (s.length() > 4 && s.startsWith(sFather)) {
				String sKey = s.toString();
				if (sKey.indexOf("_") > -1) {
					String[] sSplit = sKey.split("_");
					sKey = sSplit[sSplit.length - 1];
				}
				mReturnHashMap.put(sKey, hClassMap.get(s));
			}
		}

		return mReturnHashMap;

	}
	
	
	public String upClassName(String sCode)
	{
		checkClassMap();
		String sReturnString="";
		if(hClassMap.containsKey(sCode))
		{
			sReturnString=hClassMap.get(sCode).toString();
		}
		
		
		return sReturnString;
		
	}
	
	
	
	
	
	public MPageNav upListPage(String sUrl,String sSearch)
	{
		
		
		PageExec pExec=new PageExec();
		
		
		MHashMap mHashMap=new MHashMap();
		
		String[] sUrlStrings = upUrlList(sUrl);
		
		String[] sKeysStrings=new String[]{"area","money_cid","peopletype_cid"};
		
		ArrayList<String> aWhere=new ArrayList<String>();
		
		String sWhereString="";
		
		for(int i=0,j=sKeysStrings.length;i<j;i++)
		{
			if(StringUtils.isNotEmpty(sUrlStrings[i])&&!sUrlStrings[i].trim().equals("0"))
			{
				aWhere.add(sKeysStrings[i]+" like :"+sKeysStrings[i]+" ");
				
				mHashMap.put(sKeysStrings[i], "%"+sUrlStrings[i].trim()+"%");
				
			}
		}
		
		
		
		
		//搜索
		if(StringUtils.isNotEmpty(sSearch))
		{
			aWhere.add(" ( name like :key ) ");
			
			mHashMap.put("key", "%"+sSearch+"%");
		}
		
		
		sWhereString=StringUtils.join( aWhere," and ");
		
		
		
		return pExec.upPageNavQuery("y_info","",sWhereString,"-zid",mHashMap.upObjs());
		
		
		
	}
	
	private String[] upUrlList(String sUrl)
	{
		int iNowSize = StringUtils.countMatches(sUrl, "_");
		for (int i = 0; i < 4 - iNowSize; i++) {
			sUrl = sUrl + "_0";
		}

		String[] sUrlStrings = sUrl.split("_");
		return sUrlStrings;
	}
	
	
	

	public String upListLink(String sUrl, String sTitle, String sSource,
			int iNow) {

		String[] sUrlStrings = upUrlList(sUrl);

		String sNnowKey = sUrlStrings[iNow];

		StringBuffer sBuffer = new StringBuffer();

		MHashMap mSourceHashMap = upClassByFather(sSource);
		mSourceHashMap.put("0", sTitle);

		Set<String> keySet = mSourceHashMap.keySet();

		String[] sTemps = mSourceHashMap.upKeys();
		Arrays.sort(sTemps);

		for (String s : sTemps) {
			sUrlStrings[iNow] = s;

			sBuffer.append("<a "
					+ (sNnowKey.equals(s) ? "class=\"c_active\" " : "")
					+ " href=\"/yinfo/list-" + StringUtils.join(sUrlStrings, "_") + "\">"
					+ mSourceHashMap.get(s).toString() + "</a>");

		}

		return sBuffer.toString();
	}

}
