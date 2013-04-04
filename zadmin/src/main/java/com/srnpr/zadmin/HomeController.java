package com.srnpr.zadmin;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.helper.FreemarkerHelper;
import com.srnpr.zweb.common.WebConst;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("userName", "xx    ");
		map.put("init", ComFunction.ConfigArray("zsrnpr.init"));
		String sReturnString = FreemarkerHelper.GetStringFromTemp(
				WebConst.GetTempletePath(), "web_admin_pagebase.ftl", map);
		
		model.addAttribute("serverTime", sReturnString );
		
		return "home";
	}
	
}
