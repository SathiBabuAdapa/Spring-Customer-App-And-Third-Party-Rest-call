package com.luv2code.springdemo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;



@Controller
@RequestMapping("/employees")
public class EmployeeController {
	
	//Load Employee Data

	 
	
	 
	 @GetMapping("/covidApi")
	 public String covidData(Model theModel) {
		 //Add the employee list to Spring Model
		 
		 RestTemplate template=new RestTemplate();
		    String covidData=  template.getForObject("https://api.covid19india.org/state_district_wise.json", String.class);
				
		    System.out.println("covidData>>> "+covidData);
		    theModel.addAttribute("covidData",covidData);
			 return "list-covid";
			 
			 
		
	 }
	 
	 

}
