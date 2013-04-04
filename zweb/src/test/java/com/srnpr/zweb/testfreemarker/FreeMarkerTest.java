package com.srnpr.zweb.testfreemarker;

import java.util.HashMap;
import org.junit.Test;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zweb.TestBase;
import com.srnpr.zweb.common.WebConst;

public class FreeMarkerTest extends TestBase {

	@Test
	public void test() {

		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("userName", "xx    ");
		map.put("init", ComFunction.ConfigArray("zsrnpr.init"));
		String sReturnString = FreemarkerHelper.GetStringFromTemp(
				WebConst.GetTempletePath(), "web_admin_pagebase.ftl", map);
		ComFunction.OutLog(sReturnString);

	}

}
