package com.srnpr.zdata.manager;

import java.util.HashMap;
import java.util.Map;



import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;

public class DataBaseManager extends BaseClass implements IBaseManager,
IBaseInit {

	public static NamedParameterJdbcTemplate Get(String sKey) {

		return ConstStatic.CONST_JDBCTEMPLETE_MAP.get(sKey);
	}

	public boolean Refresh() {

		return false;
	}

	public synchronized void Init() {

		
		
		
		ConstStatic.CONST_JDBCTEMPLETE_MAP.put(
				BConfig("zdata.base_database_name"),
				GetTemplete(BConfig("zdata.jdbc_class_zdata"),
						BConfig("zdata.jdbc_url_zdata"),
						BConfig("zdata.jdbc_user_zdata"),
						BConfig("zdata.jdbc_password_zdata")

						));



		//data source set
		for (Map<String, Object> map : Get(BConfig("zdata.base_database_name")).queryForList("select * from "+BConfig("zdata.db_table_server"),new HashMap<String, Object>())) {


			ConstStatic.CONST_JDBCTEMPLETE_MAP.put(
					(String)map.get(BConfig("zdata.db_column_server_name")),
					GetTemplete((String)map.get(BConfig("zdata.db_column_server_class")),
							(String)map.get(BConfig("zdata.db_column_server_url")),
							(String)map.get(BConfig("zdata.db_column_server_user")),
							(String)map.get(BConfig("zdata.db_column_server_password"))
							));

		};


		//data table set

















	}

	private NamedParameterJdbcTemplate GetTemplete(String sJdbcClass, String sJdbcUrl,
			String sJdbcUser, String sJdbcPassword) {




		//IoHelper iHelper = new IoHelper();
		//ComboPooledDataSource cm = (ComboPooledDataSource) iHelper.GetBeanFromFile(BConfig("zdata.datasource_beanfile"),	BConfig("zdata.datasource_beanname"));
		ComboPooledDataSource cm =new ComboPooledDataSource();



		try {
			cm.setDriverClass(sJdbcClass);
			cm.setJdbcUrl(sJdbcUrl);
			cm.setUser(sJdbcUser);
			cm.setPassword(sJdbcPassword);
			
			
			cm.setIdleConnectionTestPeriod(120);
			//cm.setMinPoolSize(5);
			//cm.setMaxPoolSize(20);
			
			

		} catch (Exception e) {
			BError(e, 968001101, sJdbcClass, sJdbcUrl, sJdbcUser, sJdbcPassword);
		}

		NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(cm);



		return jdbcTemplate;
	}

}
