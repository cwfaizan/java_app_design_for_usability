package com.qau.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qau.services.IndexService;

@Controller
public class IndexController {

	@Autowired
	IndexService indexService;
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexController(){
		int n=10;
		n=n/0;
		return "index";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public @ResponseBody String searchController(@RequestParam String query){
		return indexService.listOfWebElement(query);
	}
}
