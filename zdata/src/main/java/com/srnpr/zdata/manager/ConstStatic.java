package com.srnpr.zdata.manager;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import com.srnpr.zcom.i.IConstStatic;
import com.srnpr.zdata.model.MDataTable;

public class ConstStatic implements IConstStatic {



	static ConcurrentHashMap<String, NamedParameterJdbcTemplate> CONST_JDBCTEMPLETE_MAP=new ConcurrentHashMap<String, NamedParameterJdbcTemplate>();


	static ConcurrentHashMap<String, MDataTable> CONST_DATATABLE_MAP=new ConcurrentHashMap<String, MDataTable>();




}
