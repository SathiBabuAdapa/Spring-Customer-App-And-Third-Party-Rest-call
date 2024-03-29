package com.luv2code.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luv2code.springdemo.dao.CustomerDao;
import com.luv2code.springdemo.entity.Customer;
@Service
public class CustomerServiceImpl implements CustomerService {

	//need Inject CustomerDao
	@Autowired
	private CustomerDao customerDaa;
	
	@Override
	//@Transactional
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return customerDaa.getCustomers();
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		// TODO Auto-generated method stub
		customerDaa.saveCustomer(theCustomer);
		
	}

	@Override
	public Customer getCustomer(int theId) {
		// TODO Auto-generated method stub
		
		return customerDaa.getCustomer(theId) ;
	}

	@Override
	public void deleteCustomer(int theId) {
		// TODO Auto-generated method stub
		customerDaa.deleteCustomer(theId);
		
	}

	
}
