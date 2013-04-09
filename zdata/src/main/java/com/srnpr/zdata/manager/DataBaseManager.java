package com.srnpr.zdata.manager;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.IBaseManager;

public class DataBaseManager extends BaseClass implements IBaseManager,
		IBaseInit {

	public JdbcTemplate Get(String sKey) {

		return ConstStatic.CONST_JDBCTEMPLETE_MAP.get(sKey);
	}

	public boolean Refresh() {

		return false;
	}

	public void Init() {

		ConstStatic.CONST_JDBCTEMPLETE_MAP.put(
				BConfig("zdata.database_name"),
				GetTemplete(BConfig("zdata.jdbc_class_zdata"),
						BConfig("zdata.jdbc_url_zdata"),
						BConfig("zdata.jdbc_user_zdata"),
						BConfig("zdata.jdbc_password_zdata")

				));
		
		
		
		int iLength= Get(BConfig("zdata.database_name")).queryForInt("select count(1) from zd_serverinfo");
		
		
		BDebug(0, String.valueOf(iLength));
		
		
		
		
		

	}

	private JdbcTemplate GetTemplete(String sJdbcClass, String sJdbcUrl,
			String sJdbcUser, String sJdbcPassword) {

		IoHelper iHelper = new IoHelper();

		ComboPooledDataSource cm = (ComboPooledDataSource) iHelper.GetBeanFromFile(BConfig("zdata.datasource_beanfile"),	BConfig("zdata.datasource_beanname"));
		//ComboPooledDataSource cm =new ComboPooledDataSource();

		try {
			cm.setDriverClass(sJdbcClass);
			cm.setJdbcUrl(sJdbcUrl);
			cm.setUser(sJdbcUser);
			cm.setPassword(sJdbcPassword);

		} catch (Exception e) {
			BError(e, 968001101, sJdbcClass, sJdbcUrl, sJdbcUser, sJdbcPassword);
		}

		JdbcTemplate jdbcTemplate = new JdbcTemplate(cm);
		return jdbcTemplate;
	}

}