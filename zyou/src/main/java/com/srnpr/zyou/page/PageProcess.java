
package com.srnpr.zyou.page;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.srnpr.zdata.helper.DataHelper;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebElement;
import com.srnpr.zweb.model.MWebPage;
import com.srnpr.zweb.page.PageRequest;
import com.srnpr.zweb.process.ShowProcess;

public class PageProcess extends ShowProcess implements IWebProcess
{

	public MWebPage Process(PageRequest wRequest)
	{

		return super.ShowProcess(wRequest);
	}

}
