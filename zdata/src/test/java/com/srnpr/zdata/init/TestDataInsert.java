package com.srnpr.zdata.init;

import org.springframework.util.StopWatch;

import com.srnpr.zdata.TestBase;

public class TestDataInsert extends TestBase {


	public void test() {
		StopWatch sWatch=new StopWatch();
		sWatch.start();

		


		sWatch.stop();

		BDebug(543,String.valueOf(  sWatch.getTotalTimeSeconds()));
	}

}
