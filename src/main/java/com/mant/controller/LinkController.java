package com.mant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/")
public class LinkController {

	@RequestMapping(method=RequestMethod.GET)
	public String mainPage() {
		return "home";
	}

	@RequestMapping(value = "index", method=RequestMethod.GET)
	public ModelAndView indexPage() {
		return new ModelAndView("home");
	}
}
