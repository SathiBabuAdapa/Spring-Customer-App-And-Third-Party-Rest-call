package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.dao.CustomerDao;
import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// Inject CustomerDao
	/*
	 * @Autowired CustomerDao customerDao;
	 */
	@Autowired
	CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		// get Customers from Dao
		List<Customer> theCustomers = customerService.getCustomers();
		// Add cstomers to model
		theModel.addAttribute("customers", theCustomers);
		return "list-customers";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		// Create a model attribute for bind form data
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}

	@PostMapping("saveCustomer")
	public String saveCustomer(@ModelAttribute("Customers") Customer theCustomer) {

		// Add some code for daving Customer Data.
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForupdate(@RequestParam("customerId") int theId, Model theModel) {
		

		 //Get the customer   from the dataase 
		
		  Customer theCustomer=customerService.getCustomer(theId);
		  //Set Customer as the model attributeto pre-populate the form
		  theModel.addAttribute("customer",theCustomer); //send over to our form
		
		return "customer-form";

	}
	
	@GetMapping("/delete")
	public String dleteCustomer(@RequestParam("customerId") int theId ){
		

		 //Get the customer   from the dataase 
		
		 customerService.deleteCustomer(theId);
		  //Set Customer as the model attributeto pre-populate the form
		 // theModel.addAttribute("customer",theCustomer); //send over to our form
		
		 return "redirect:/customer/list";

	}
	
	
	@RequestMapping("/indexdata")
	public String showindex(Model theModel) {
		// get Customers from Dao
		
		return "dashbord";
	}

}
