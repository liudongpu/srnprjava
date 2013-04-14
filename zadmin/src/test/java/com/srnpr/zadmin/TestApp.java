package com.srnpr.zadmin;

import static org.junit.Assert.fail;

import java.util.Locale;

import org.junit.Test;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


public class TestApp {


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		//model.addAttribute("serverTime", new WebPage().GetPageHtml() );
		model.addAttribute("serverTime", "" );
		return "home";
	}


	@Test
	public void test() {


		//PathMatchingResourcePatternResolver  d

		fail("Not yet implemented");
	}

}
