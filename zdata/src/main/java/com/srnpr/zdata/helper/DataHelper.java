package com.srnpr.zdata.helper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataBaseManager;

public class DataHelper extends BaseClass {

	public List<Map<String, Object>> Get(String sDataBase, String sTableName) {
		return Get(sDataBase, sTableName, "*", "", -1, 0);
	}

	public List<Map<String, Object>> Get(String sDataBase, String sTableName,
			String... args) {
		return Get(sDataBase, sTableName, "*", "", -1, 0, (Object[]) args);
	}

	public List<Map<String, Object>> Get(String sDataBase, String sTableName,
			String sRows, String sOrder, int start, int end, Object... args) {

		StringBuffer sBuilder = new StringBuffer();

		sBuilder.append("select ");
		if (!sRows.isEmpty() && sRows.equals("*")) {
			sBuilder.append(sRows);
		} else {
			sBuilder.append(" * ");
		}

		sBuilder.append(" from " + sTableName);

		// Object[] oArgsObjects=new Object[0];

		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();

		if (args != null && args.length > 0) {

			sBuilder.append(" where ");

			for(int i=0,j=args.length/2;i<j;i++)
			{
				sBuilder.append(" "+args[i]+"=:"+args[i]+" ");
				hParamHashMap.put((String)args[i], args[i+1]);

			}

		}

		if (start > -1 && end > 0) {
			sBuilder.append(" limit " + start + "," + end);
		}

		return DataBaseManager.Get(sDataBase).queryForList(sBuilder.toString(),
				hParamHashMap);

	}




	public void Put(String sDataBase,String sTableName,MHashMap mHashMap)
	{

		StringBuffer sSqlBuffer=new StringBuffer();

		sSqlBuffer.append("insert into "+sTableName+"(");

		String[] sKey=mHashMap.GetKeys();

		sSqlBuffer.append(StringUtils.join(sKey,","));

		sSqlBuffer.append(") values(:");
		sSqlBuffer.append(StringUtils.join(sKey,",:"));
		sSqlBuffer.append(")");

		DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(),mHashMap);


	}









}
