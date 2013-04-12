package com.srnpr.zdata.helper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import com.srnpr.zcom.base.BaseClass;
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

		StringBuilder sBuilder = new StringBuilder();

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

}
