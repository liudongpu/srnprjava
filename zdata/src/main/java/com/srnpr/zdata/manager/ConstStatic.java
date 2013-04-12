package com.srnpr.zdata.manager;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import com.srnpr.zcom.i.IConstStatic;

public class ConstStatic implements IConstStatic {

	
	
	static ConcurrentHashMap<String, NamedParameterJdbcTemplate> CONST_JDBCTEMPLETE_MAP=new ConcurrentHashMap<String, NamedParameterJdbcTemplate>();
	
	
	
}
