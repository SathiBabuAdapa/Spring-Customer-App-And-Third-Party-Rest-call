package com.luv2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luv2code.springdemo.dao.SupplierDao;
import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Supplier;
@Service
public class SupplierServiceImpl implements SupplierService {

	//need Inject CustomerDao
	@Autowired
	private SupplierDao supplierDao;
	
	@Override
	//@Transactional
	public List<Supplier> getSupplier() {
		// TODO Auto-generated method stub
		return supplierDao.getSupplier();
	}

	@Override
	public void saveSupplier(Supplier theSupplier) {
		// TODO Auto-generated method stub
		supplierDao.saveSupplier(theSupplier);
		
	}

	@Override
	public Supplier getSupplier(int theId) {
		// TODO Auto-generated method stub
		
		return supplierDao.getSupplier(theId) ;
	}

	@Override
	public void deleteSupplier(int theId) {
		// TODO Auto-generated method stub
		supplierDao.deleteSuppliers(theId);
		
	}

	
}
