package com.luv2code.springdemo.dao;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Supplier;

public interface SupplierDao {

	public List<Supplier> getSupplier();

	public void saveSupplier(Supplier theSupplierr);

	public Supplier getSupplier(int theId);

	public void deleteSuppliers(int theId);
}
