package com.srnpr.newsinfo.call;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.model.MResult;
import com.srnpr.zweb.page.PageRequest;

public class UserCall extends BaseClass {

	private MResult result = new MResult();

	public MResult getResult() {
		return result;
	}

	public void setResult(MResult result) {
		this.result = result;
	}

	private PageRequest pRequest;

	public UserCall(PageRequest p) {
		this.pRequest = p;
	}

	public void Reg() {
		if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_name")
				.toString())) {
			result.error(937301002);
		} else if (!StringUtils.isNotEmpty(pRequest.getReqMap().get("reg_pass")
				.toString())) {
			result.error(937301003);
		} else {
			
			final String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			 Pattern pattern = Pattern.compile(pattern1);
			 Matcher mat = pattern.matcher((pRequest.getReqMap().get("reg_pass").toString()));
			if (!mat.find()) {
				result.error(937301004);
			}
		}
		
		
		if(result.getFlag())
		{
			
			String sCookieId=ComFunction.upUuid();
			
			
			
			
			
			
			
		}
		
		
	}
}
