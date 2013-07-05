package com.srnpr.zdata.manager;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zcom.top.TopStatic;
import com.srnpr.zdata.support.TableSupport;
import com.srnpr.zdata.model.MDataTable;

public class ConstStatic implements IConstStatic {



	//static ConcurrentHashMap<String, NamedParameterJdbcTemplate> CONST_JDBCTEMPLETE_MAP=new ConcurrentHashMap<String, NamedParameterJdbcTemplate>();

	static ConcurrentHashMap<String, NamedParameterJdbcTemplate> CONST_JDBCTEMPLETE_MAP=new TopStatic<ConcurrentHashMap<String, NamedParameterJdbcTemplate>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_CONFIG_MAP",new ConcurrentHashMap<String, NamedParameterJdbcTemplate>());


	//static ConcurrentHashMap<String, MDataTable> CONST_DATATABLE_MAP=new ConcurrentHashMap<String, MDataTable>();
	static ConcurrentHashMap<String, MDataTable> CONST_DATATABLE_MAP=new TopStatic<ConcurrentHashMap<String, MDataTable>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_CONFIG_MAP",new ConcurrentHashMap<String, MDataTable>());


	//static ConcurrentHashMap<String, TableSupport> CONST_TABLESUPPORT_MAP=new ConcurrentHashMap<String, TableSupport>();

	static ConcurrentHashMap<String, TableSupport> CONST_TABLESUPPORT_MAP=new TopStatic<ConcurrentHashMap<String, TableSupport>>().init("com.srnpr.zcom.manager.ConstStatic","CONST_CONFIG_MAP",new ConcurrentHashMap<String, TableSupport>());

}
