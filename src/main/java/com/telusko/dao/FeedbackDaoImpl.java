package com.telusko.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.telusko.model.Feedback;

@Repository
@Transactional
public class FeedbackDaoImpl implements FeedbackDao
{
	@Autowired
	SessionFactory sessionFactory;

	public void save(Feedback fdao) {
		
		sessionFactory.getCurrentSession().save(fdao);
		System.out.println(fdao.toString());
		
		
	}

}
