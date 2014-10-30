package com.zm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zm.model.SchoolDetails;
import com.zm.repositories.SchoolRepository;

@Controller
public class MongoController {

	@Autowired
	private SchoolRepository repository;
	
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView helloWorld(ModelMap model){
		List users = repository.findAll();
		ModelAndView modelAndView = new ModelAndView("index");     
		modelAndView.addObject("users", users );
		return modelAndView;
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public @ResponseBody
	Map<String, List<SchoolDetails>> schoolList(){
		HashMap<String, List<SchoolDetails>> map = new HashMap<String, List<SchoolDetails>>();
		map.put("schools", repository.findAll());
		return map;
	}
}
