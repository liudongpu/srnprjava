package com.srnpr.zadmin;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.page.WebPage;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		// model.addAttribute("serverTime", new
		// WebPage().GetPageHtml("zyou","center") );
		// model.addAttribute("serverTime", new
		// ConfigCacheManager().ShowAllConfig() );
		// return "home";
		return index("zyou", "chart-system_table", model);
	}

	@RequestMapping(value = "/{path}/{url}")
	public String index(@PathVariable("path") String sPath,
			@PathVariable("url") String sUrl, Model model) {

		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();

		if (sPath.equals("zweb-file")) {

			model.addAttribute("serverTime","");
			
			
		} else {

			MHashMap cMap = new MHashMap();
			@SuppressWarnings("unchecked")
			Enumeration<String> eKey = request.getParameterNames();
			while (eKey.hasMoreElements()) {
				String string = eKey.nextElement();
				cMap.put(string, request.getParameter(string));
			}
			model.addAttribute("serverTime",
					new WebPage().upPageHtml(sPath, sUrl, cMap));
		}
		return "home";
	}

}
