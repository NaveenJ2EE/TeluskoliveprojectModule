package com.telusko.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.telusko.model.SignIn;

@Repository
@Transactional
public class SignInDaoImpl {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void Save(SignIn signIn){
		
		sessionFactory.getCurrentSession().save(signIn);
		
	}

}
