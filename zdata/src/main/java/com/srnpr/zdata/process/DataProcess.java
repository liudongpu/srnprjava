
package com.srnpr.zdata.process;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zdata.manager.DataBaseManager;

public class DataProcess extends BaseClass
{

	private String	sDataBase	= "";

	private String	sTableName	= "";

	public void InitDataProcess(String sDB, String sTB)
	{

		sDataBase = sDB;
		sTableName = sTB;
	}

	public Map<String, Object> upOneMap(String... args)
	{

		return upList("*", "", 0, 1, (Object[]) args).get(0);
	}

	public List<Map<String, Object>> upList()
	{

		return upList("*", "", -1, 0);
	}

	public List<Map<String, Object>> upListListByQuery(String... args)
	{

		return upList("*", "", -1, 0, (Object[]) args);
	}

	public List<Map<String, Object>> upList(
			String sRows,
			String sOrder,
			int start,
			int end,
			Object... args)
	{

		StringBuffer sBuilder = new StringBuffer();

		sBuilder.append("select ");
		if (!sRows.isEmpty() && sRows.equals("*"))
		{
			sBuilder.append(sRows);
		}
		else
		{
			sBuilder.append(" * ");
		}

		sBuilder.append(" from " + sTableName);

		// Object[] oArgsObjects=new Object[0];

		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();

		if (args != null && args.length > 0)
		{

			sBuilder.append(" where ");

			for (int i = 0, j = args.length / 2; i < j; i++)
			{
				sBuilder.append(" " + args[i] + "=:" + args[i] + " ");
				hParamHashMap.put((String) args[i], args[i + 1]);

			}

		}

		if (start > -1 && end > 0)
		{
			sBuilder.append(" limit " + start + "," + end);
		}

		return DataBaseManager.Get(sDataBase).queryForList(sBuilder.toString(), hParamHashMap);

	}
	
	
	
	public Object doExec(String sSql,String... sArgs)
	{
		
		HashMap<String, Object> hParamHashMap = new HashMap<String, Object>();
		
		if(sArgs!=null&& sArgs.length>0)
		{
			String sBaseArg="autoparam";
			for(int i=0,j=sArgs.length;i<j;i++)
			{
				sSql=sSql.replace("{"+i+"}",":"+sBaseArg+i);
				hParamHashMap.put(sBaseArg+i, sArgs[i]);
			}
			
		}
		
		
		
		return DataBaseManager.Get(sDataBase).execute(sSql, hParamHashMap, null);
		
		
	}
	
	
	
	
	
	
	
	
	
	

	public void inPost(MHashMap mHashMap, String... sArgs)
	{

		StringBuffer sSqlBuffer = new StringBuffer();

		sSqlBuffer.append("update " + sTableName + " set ");

		MHashMap mWhereMap = new MHashMap();

		if (sArgs != null && sArgs.length > 0)
		{
			if (sArgs.length == 1)
			{
				for (String sWhere : StringUtils.split(sArgs[0], ","))
				{
					mWhereMap.put(sWhere, mHashMap.get(sWhere));
				}
			}
			else
			{
				for (int i = 0, j = sArgs.length / 2; i < j; i++)
				{
					mHashMap.put((String) sArgs[i], sArgs[i + 1]);
				}
			}
		}

		for (String sKey : mHashMap.GetKeys())
		{
			if (!mWhereMap.containsKey(sKey))
			{
				sSqlBuffer.append(sKey + "=:" + sKey + ",");
			}
		}
		sSqlBuffer.delete(sSqlBuffer.length() - 1, sSqlBuffer.length());

		if (mWhereMap.size() > 0)
		{
			sSqlBuffer.append(" where ");

			for (String sKey : mWhereMap.GetKeys())
			{
				sSqlBuffer.append(sKey + "=:" + sKey + " and");
			}

			sSqlBuffer.delete(sSqlBuffer.length() - 3, sSqlBuffer.length());

		}

		DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(), mHashMap);
	}

	public void inPut(MHashMap mHashMap)
	{

		StringBuffer sSqlBuffer = new StringBuffer();

		sSqlBuffer.append("insert into " + sTableName + "(");

		String[] sKey = mHashMap.GetKeys();

		sSqlBuffer.append(StringUtils.join(sKey, ","));

		sSqlBuffer.append(") values(:");
		sSqlBuffer.append(StringUtils.join(sKey, ",:"));
		sSqlBuffer.append(")");

		DataBaseManager.Get(sDataBase).update(sSqlBuffer.toString(), mHashMap);

	}

}
