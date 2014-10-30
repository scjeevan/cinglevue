package com.zm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zm.model.SchoolDetails;
import com.zm.repositories.SchoolRepository;

@Controller
public class MongoController {

	@Autowired
	private SchoolRepository repository;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public @ResponseBody
	Map<String, List<SchoolDetails>> schoolList(@RequestParam("subject") String subject){		
		HashMap<String, List<SchoolDetails>> map = new HashMap<String, List<SchoolDetails>>();
		if(subject.equals("all")){
			map.put("schools", repository.findAll());
		}
		else{
			map.put("schools", repository.findBySubject(subject));
		}
		return map;
	}
}
