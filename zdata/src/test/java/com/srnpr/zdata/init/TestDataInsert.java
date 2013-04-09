package com.srnpr.zdata.init;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.util.StopWatch;

import com.srnpr.zdata.TestBase;
import com.srnpr.zdata.manager.DataBaseManager;

public class TestDataInsert extends TestBase {

	
	public void test() {
		StopWatch sWatch=new StopWatch();
		sWatch.start();
		
		DataBaseManager dbBaseManager=new DataBaseManager();
		
		for(long i=100000;i<999999;i++)
		{
		
			dbBaseManager.Get(BConfig("zdata.database_name")).update("insert into t1(t1col1,t1col2,t1col3) values("+i+","+i+","+i+")");
		
		}
		
		
		sWatch.stop();
		
		BDebug(543,String.valueOf(  sWatch.getTotalTimeSeconds()));
	}

}
