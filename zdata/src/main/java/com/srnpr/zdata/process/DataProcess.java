package com.srnpr.zdata.process;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataBaseManager;
import com.srnpr.zdata.manager.DataTableManager;
import com.srnpr.zdata.model.MDataTable;
import com.srnpr.zdata.support.TableSupport;

public class DataProcess extends BaseClass {

	private String sDataBase = "";

	private String sTableName = "";

	public void InitDataProcess(String sDB, String sTB) {

		sDataBase = sDB;
		sTableName = sTB;
	}

	public Map<String, Object> upOneMap(String... args) {

		List<Map<String, Object>> lReturns = upList("*", "", 0, 1,
				(Object[]) args);

		return lReturns.size() > 0 ? lReturns.get(0) : null;
	}

	public Map<String, Object> upOneMap(MHashMap mHashMap) {

		return upList("*", "", 0, 1, mHashMap).get(0);
	}

	public Map<String, Object> upOneQuery(String sWhere, String... args) {

		List<Map<String, Object>> lReturns = upListAll("*", sWhere, "", 0, 1,
				(Object[]) args);

		return lReturns.size() > 0 ? lReturns.get(0) : null;
	}

	public List<Map<String, Object>> upList() {

		return upList("*", "", -1, 0);
	}

	public List<Map<String, Object>> upListListByQuery(String... args) {

		return upList("*", "", -1, 0, (Object[]) args);

	}

	public List<Map<String, Object>> upListBySql(String sSql) {
		return DataBaseManager.Get(sDataBase).queryForList(sSql,
				new HashMap<String, String>());

	}

	public long upCount(Object... oArgs) {

		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append(" select count(1) from " + sTableName);
		MHashMap mHashMap = new MHashMap();
		if (oArgs != null && oArgs.length > 0) {
			mHashMap.inAdd(oArgs);
			sBuilder.append(" where "
					+ FormatHelper.joinWhereStrings(mHashMap.upKeys()) + " ");

		}
		return DataBaseManager.Get(sDataBase).queryForLong(sBuilder.toString(),
				mHashMap);
	}

	public List<Map<String, Object>> upListListByQuery(MHashMap mHashMap) {
		return upList("*", "", -1, 0, mHashMap);
	}

	public List<Map<String, Object>> upListListByQuery(String sField,
			MHashMap mHashMap) {
		return upList(sField, "", -1, 0, mHashMap);
	}

	public List<Map<String, Object>> upListListOrder(String sField,
			String sOrder, Object... sArgs) {
		return upList(sField, sOrder, -1, 0, (Object[]) sArgs);
	}

	public List<Map<String, Object>> upList(String sRows, String sOrder,
			int start, int end, MHashMap mHashMap) {
		ArrayList<Object> aArgsArrayList = new ArrayList<Object>();

		for (String s : mHashMap.upKeys()) {
			aArgsArrayList.add(s);
			aArgsArrayList.add(mHashMap.get(s));
		}

		return upList(sRows, sOrder, start, end, aArgsArrayList.toArray());
	}

	public List<Map<String, Object>> upList(String sRows, String sOrder,
			int start, int end, Object... oArgs) {
		return upListAll(sRows, "", sOrder, start, end, oArgs);
	}

	public List<Map<String, Object>> upListAll(String sRows, String sWhere,
			String sOrder, int start, int end, Object... oArgs) {

		StringBuffer sBuilder = new StringBuffer();

		sBuilder.append("select ");

		if (StringUtils.isEmpty(sRows)) {
			sBuilder.append(" * ");
		} else {
			sBuilder.append(sRows);
		}

		sBuilder.append(" from " + sTableName);

		// Object[] oArgsObjects=new Object[0];

		MHashMap mHashMap = new MHashMap();
		if (oArgs != null && oArgs.length > 0) {

			mHashMap.inAdd(oArgs);

			sBuilder.append(" where "
					+ (StringUtils.isEmpty(sWhere) ? FormatHelper
							.joinWhereStrings(mHashMap.upKeys()) : sWhere)
					+ " ");

		}

		if (!StringUtils.isEmpty(sOrder)) {

			MDataTable mDataTable = DataTableManager.GetTable(sTableName);

			ArrayList<String> lOrderList = new ArrayList<String>();

			for (String s : sOrder.split(",")) {

				if (s.substring(0, 1).equals("-")) {
					s = s.substring(1);
					lOrderList.add(s + " desc ");
				} else {
					lOrderList.add(s);
				}

				if (!mDataTable.getColumnsMap().containsKey(s)) {
					lOrderList.remove(lOrderList.size() - 1);
				}
			}

			if (lOrderList.size() > 0) {

				sBuilder.append(" order by "
						+ StringUtils.join(lOrderList.toArray(), ","));
			}
		}

		if (start > -1 && end > 0) {
			sBuilder.append(" limit " + start + "," + end);
		}

		return DataBaseManager.Get(sDataBase).queryForList(sBuilder.toString(),
				mHashMap);

	}

	public int upListCount(Object... oArgs) {
		return upListCountWhere("", oArgs);
	}

	public int upListCountWhere(String sWhere, Object... oArgs) {
		StringBuffer sBuilder = new StringBuffer();

		sBuilder.append("select count(1) ");
		sBuilder.append(" from " + sTableName);

		MHashMap mHashMap = new MHashMap();
		if (oArgs != null && oArgs.length > 0) {

			mHashMap.inAdd(oArgs);

			sBuilder.append(" where "
					+ (StringUtils.isEmpty(sWhere) ? FormatHelper
							.joinWhereStrings(mHashMap.upKeys()) : sWhere)
					+ " ");

		}

		return DataBaseManager.Get(sDataBase).queryForInt(sBuilder.toString(),
				mHashMap);

	}

	public Object doExec(String sSql, String... sArgs) {

		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();

		if (sArgs != null && sArgs.length > 0) {
			String sBaseArg = "autoparam";
			for (int i = 0, j = sArgs.length; i < j; i++) {
				sSql = sSql.replace("{" + i + "}", ":" + sBaseArg + i);
				hParamHashMap.put(sBaseArg + i, sArgs[i]);
			}

		}

		return DataBaseManager.Get(sDataBase).update(sSql, hParamHashMap);

	}

	public int inPost(MHashMap mHashMap, String... sArgs) {

		StringBuffer sSqlBuffer = new StringBuffer();

		sSqlBuffer.append("update " + sTableName + " set ");

		MHashMap mWhereMap = new MHashMap();

		if (sArgs != null && sArgs.length > 0) {
			if (sArgs.length == 1) {
				for (String sWhere : StringUtils.split(sArgs[0], ",")) {
					mWhereMap.put(sWhere, mHashMap.get(sWhere));
				}
			} else {
				for (int i = 0, j = sArgs.length; i < j; i = i + 2) {
					mHashMap.put((String) sArgs[i], sArgs[i + 1]);
				}
			}
		}

		for (String sKey : mHashMap.upKeys()) {
			if (!mWhereMap.containsKey(sKey)) {
				sSqlBuffer.append(sKey + "=:" + sKey + ",");
			}
		}
		sSqlBuffer.delete(sSqlBuffer.length() - 1, sSqlBuffer.length());

		if (mWhereMap.size() > 0) {
			sSqlBuffer.append(" where "
					+ FormatHelper.joinWhereStrings(mWhereMap.upKeys()) + " ");

		}

		return DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(),
				mHashMap);
	}

	public int inPut(MHashMap mHashMap) {

		StringBuffer sSqlBuffer = new StringBuffer();

		sSqlBuffer.append("insert into " + sTableName + "(");

		String[] sKey = mHashMap.upKeys();

		sSqlBuffer.append(StringUtils.join(sKey, ","));

		sSqlBuffer.append(") values(:");
		sSqlBuffer.append(StringUtils.join(sKey, ",:"));
		sSqlBuffer.append(")");

		return DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(),
				mHashMap);

	}

}
