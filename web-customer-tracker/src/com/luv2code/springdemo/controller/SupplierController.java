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

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Supplier;
import com.luv2code.springdemo.service.SupplierService;


@Controller
@RequestMapping("/supplier")
public class SupplierController {
	
	@Autowired
	SupplierService supplierService;
	
	@RequestMapping("/supplierlist")
	public String listCustomers(Model theModel) {
		System.out.println("Supplier Supplier list");
		// get Customers from Dao
		List<Supplier> theCustomers = supplierService.getSupplier();
		// Add cstomers to model
		theModel.addAttribute("customers", theCustomers);
		return "list-supplier";
	}
	
	@RequestMapping("/hello")
	public String hellosupplier() {
		
		return "Hello SUPPLIER";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		// Create a model attribute for bind form data
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "supplier-form";
	}

	@PostMapping("saveSupplier")
	public String saveCustomer(@ModelAttribute("Customers") Supplier theSupplier) {

		// Add some code for daving Customer Data.
		supplierService.saveSupplier(theSupplier);
		return "redirect:/supplier/supplierlist";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForupdate(@RequestParam("customerId") int theId, Model theModel) {
		

		 //Get the customer   from the dataase 
		
		  Supplier theCustomer=supplierService.getSupplier(theId);
		  //Set Customer as the model attributeto pre-populate the form
		  theModel.addAttribute("customer",theCustomer); //send over to our form
		
		return "supplier-form";

	}
	
	@GetMapping("/delete")
	public String dleteCustomer(@RequestParam("customerId") int theId ){
		

		 //Get the customer   from the dataase 
		
		supplierService.deleteSupplier(theId);
		  //Set Customer as the model attributeto pre-populate the form
		 // theModel.addAttribute("customer",theCustomer); //send over to our form
		
		 return "redirect:/supplier/supplierlist";

	}
	
	

}
