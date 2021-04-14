package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.Supplier;

@Repository
public class SupplierDAOImpl implements SupplierDao {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	@Transactional
	public List<Supplier> getSupplier() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<Supplier> theQuery = 
				currentSession.createQuery("from Supplier order by lastName", Supplier.class);
		
		// execute query and get result list
		List<Supplier> suppliers = theQuery.getResultList();
		//System.out.println("customers>>>>>>        >>>>>>>>>>>>>>>>  "+customers);
				
		// return the results		
		return suppliers;
	}

	@Override
	@Transactional
	public void saveSupplier(Supplier theSupplier) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theSupplier);
		
	}
	
	@Override
	@Transactional
	public Supplier getSupplier(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		Supplier theSupplier=currentSession.get(Supplier.class,theId);
		return theSupplier;
	}

	@Override
	@Transactional
	public void deleteSuppliers(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		Query theQuery=currentSession.createQuery("delete from Supplier where id=:customerId");
		theQuery.setParameter("customerId",theId);
		theQuery.executeUpdate();
	}

}






