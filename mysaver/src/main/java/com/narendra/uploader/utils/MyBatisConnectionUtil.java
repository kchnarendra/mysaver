package com.narendra.uploader.utils;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class MyBatisConnectionUtil {

	@Autowired
	SqlSessionFactoryBean sqlSessionFactory;
	
	SqlSessionFactory sessionFactory;
	private SqlSession session;
	
	public MyBatisConnectionUtil() {
		try {
			if(sqlSessionFactory != null) {
				sessionFactory = sqlSessionFactory.getObject();
			}
		} catch (Exception e) {
			System.out.println("Error while getting myBatis Connection : " + e);
		}
	}
	
	public SqlSession getSqlSession() throws Exception {
		if(sessionFactory != null) {
			session = sessionFactory.openSession();
		}else {
			//try {
				session = sqlSessionFactory.getObject().openSession();
			//} catch (Exception e) {
			//	System.out.println("Error while getting myBatis Connection : " + e);
			//}
		}
		return session;
	}
}
