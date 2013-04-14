package com.srnpr.zadmin;

import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.page.WebPage;
import com.srnpr.zweb.page.PageRequest;

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
	public String home( Model model) {
		//model.addAttribute("serverTime", new WebPage().GetPageHtml("zyou","center") );
		//model.addAttribute("serverTime", new ConfigCacheManager().ShowAllConfig() );
		//return "home";
		return index("zyou", "center-center", model);
	}
	
	@RequestMapping(value = "/{path}/{url}")
	public String index(@PathVariable("path")String sPath,@PathVariable("url")String sUrl, Model model) {
		
		 HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();

		 MHashMap cMap=new MHashMap();
		 Enumeration<String> eKey= request.getParameterNames();
		 while (eKey.hasMoreElements()) {
			String string = eKey.nextElement();
			cMap.put(string, request.getParameter(string));
			
		}
		 
		 
		model.addAttribute("serverTime", new WebPage().GetPageHtml(sPath,sUrl,cMap) );
		return "home";
	}

	
}
