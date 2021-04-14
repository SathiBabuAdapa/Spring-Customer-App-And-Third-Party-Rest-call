package com.luv2code.springdemo.service;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Supplier;

public interface SupplierService {
  
public List<Supplier> getSupplier();

public void saveSupplier(Supplier theSupplier);

public Supplier getSupplier(int theId);

public void deleteSupplier(int theId);


   
}
