package com.srnpr.zdata.manager;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.jdbc.core.JdbcTemplate;

import com.srnpr.zcom.i.IConstStatic;

public class ConstStatic implements IConstStatic {

	
	
	static ConcurrentHashMap<String, JdbcTemplate> CONST_JDBCTEMPLETE_MAP=new ConcurrentHashMap<String, JdbcTemplate>();
	
	
	
}
