package com.srnpr.zdata.process;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import com.srnpr.zcom.base.BaseClass;
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

		return upList("*", "", 0, 1, (Object[]) args).get(0);
	}

	public Map<String, Object> upOneMap(MHashMap mHashMap) {

		return upList("*", "", 0, 1, mHashMap).get(0);
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

	public long upCount(String... sArgs) {

		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append(" select count(1) from " + sTableName);
		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();

		if (sArgs != null && sArgs.length > 0) {

			sBuilder.append(" where ");

			for (int i = 0, j = sArgs.length / 2; i < j; i = i + 2) {
				sBuilder.append(" " + sArgs[i] + "=:" + sArgs[i] + " ");
				hParamHashMap.put((String) sArgs[i], sArgs[i + 1]);
			}
		}
		return DataBaseManager.Get(sDataBase).queryForLong(sBuilder.toString(),
				hParamHashMap);
	}

	public List<Map<String, Object>> upListListByQuery(MHashMap mHashMap) {
		return upList("*", "", -1, 0, mHashMap);
	}

	public List<Map<String, Object>> upListListByQuery(String sField,
			MHashMap mHashMap) {
		return upList(sField, "", -1, 0, mHashMap);
	}

	public List<Map<String, Object>> upListListOrder(String sField,
			String sOrder, String... sArgs) {
		return upList(sField, sOrder, -1, 0, (Object[]) sArgs);
	}

	public List<Map<String, Object>> upList(String sRows, String sOrder,
			int start, int end, MHashMap mHashMap) {
		ArrayList<Object> aArgsArrayList = new ArrayList<Object>();

		for (String s : mHashMap.GetKeys()) {
			aArgsArrayList.add(s);
			aArgsArrayList.add(mHashMap.get(s));
		}

		return upList(sRows, sOrder, start, end, aArgsArrayList.toArray());
	}

	public List<Map<String, Object>> upList(String sRows, String sOrder,
			int start, int end, Object... args) {

		StringBuffer sBuilder = new StringBuffer();

		sBuilder.append("select ");

		if (StringUtils.isEmpty(sRows)) {
			sBuilder.append(" * ");
		} else {
			sBuilder.append(sRows);
		}

		sBuilder.append(" from " + sTableName);

		// Object[] oArgsObjects=new Object[0];

		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();

		if (args != null && args.length > 0) {

			sBuilder.append(" where ");

			for (int i = 0, j = args.length / 2; i < j; i = i + 2) {
				sBuilder.append(" " + args[i] + "=:" + args[i] + " ");
				hParamHashMap.put((String) args[i], args[i + 1]);
			}
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
				hParamHashMap);

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
				for (int i = 0, j = sArgs.length / 2; i < j; i++) {
					mHashMap.put((String) sArgs[i], sArgs[i + 1]);
				}
			}
		}

		for (String sKey : mHashMap.GetKeys()) {
			if (!mWhereMap.containsKey(sKey)) {
				sSqlBuffer.append(sKey + "=:" + sKey + ",");
			}
		}
		sSqlBuffer.delete(sSqlBuffer.length() - 1, sSqlBuffer.length());

		if (mWhereMap.size() > 0) {
			sSqlBuffer.append(" where ");

			for (String sKey : mWhereMap.GetKeys()) {
				sSqlBuffer.append(sKey + "=:" + sKey + " and");
			}

			sSqlBuffer.delete(sSqlBuffer.length() - 3, sSqlBuffer.length());

		}

		return DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(), mHashMap);
	}

	public int inPut(MHashMap mHashMap) {

		StringBuffer sSqlBuffer = new StringBuffer();

		sSqlBuffer.append("insert into " + sTableName + "(");

		String[] sKey = mHashMap.GetKeys();

		sSqlBuffer.append(StringUtils.join(sKey, ","));

		sSqlBuffer.append(") values(:");
		sSqlBuffer.append(StringUtils.join(sKey, ",:"));
		sSqlBuffer.append(")");

		return DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(), mHashMap);

	}

}
