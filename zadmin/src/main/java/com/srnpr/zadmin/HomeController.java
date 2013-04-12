package com.srnpr.zadmin;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zweb.page.WebPage;

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
		model.addAttribute("serverTime", new WebPage().GetPageHtml("center") );
		//model.addAttribute("serverTime", new ConfigCacheManager().ShowAllConfig() );
		return "home";
	}
	
	@RequestMapping(value = "/zadmin/{p}")
	public String index(Locale locale ,@PathVariable("p")String sUrl, Model model) {
		
		model.addAttribute("serverTime", new WebPage().GetPageHtml(sUrl) );
		return "home";
	}
	
	
	
	
	
	
}
