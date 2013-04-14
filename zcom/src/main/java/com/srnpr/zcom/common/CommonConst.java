package com.srnpr.zcom.common;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;

public class CommonConst {




	public static String Get(EComConst eConst)
	{
		return StringUtils.defaultString((String)ConstStatic.CONST_COM_MAP.get(eConst));
	}

	public  void Put(EComConst eConst,Object oValue)
	{
		ConstStatic.CONST_COM_MAP.put(eConst, oValue);
	}








	public  Boolean FlagJunitModel()
	{

		boolean bReturn=false;




		if(Get(EComConst.com_run_type)!=null&&ERunType.junit.toString().equals(Get(EComConst.com_run_type)))
		{
			ComFunction.OutLog(Get(EComConst.com_run_type));
		}



		return bReturn;
	}









}
