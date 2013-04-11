package com.srnpr.zdata.helper;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zdata.manager.DataBaseManager;

public class DataHelper extends BaseClass {

	
	
	public static List<Map<String, Object>> Get(String sDataBase,String sTableName)
	{
		return Get(sDataBase , sTableName, "*", "", -1, 0);
	}
	
	public static List<Map<String, Object>> Get(String sDataBase, String sTableName,String sRows,String sOrder,int start,int end,Object... args)
	{
		
		StringBuilder sBuilder=new StringBuilder();
		
		sBuilder.append("select ");
		if(!sRows.isEmpty()&&sRows.equals("*"))
		{
			sBuilder.append(sRows);
		}
		else
		{
			sBuilder.append(" * ");
		}
		
		sBuilder.append(" from "+sTableName);
		
		Object[] oArgsObjects=null;
		
		
		if(start>-1&&end>0)
		{
			sBuilder.append(" limit "+start+","+end);
		}
		
		
		
		return  DataBaseManager.Get(sDataBase).queryForList(sBuilder.toString());

	}
	
	
	
	
	
}
