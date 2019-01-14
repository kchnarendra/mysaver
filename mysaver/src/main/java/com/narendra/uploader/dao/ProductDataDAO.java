package com.narendra.uploader.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.narendra.uploader.beans.ProductModel;
import com.narendra.uploader.utils.MyBatisConnectionUtil;

@Component
public class ProductDataDAO extends MyBatisConnectionUtil {
	
	public void insertPriceData(ProductModel productModel) {
		SqlSession session = null;
		try {
			session = getSqlSession();	

					int insert = session.insert("insertPriceDataQuery", productModel);
					session.commit();
	
		} catch (Exception e) {
			System.out.println("insertPriceData(): " + e);
		} finally {
			session.close();
		}
	}
	
	public List<ProductModel> getAllProducts(){
		SqlSession session = null;
		List<ProductModel> allProds = null;
		try {
			session = getSqlSession();	

					allProds = session.selectList("getAllProducts");
					session.commit();
	
		} catch (Exception e) {
			System.out.println("insertPriceData(): " + e);
		} finally {
			session.close();
		}
		return allProds;
	}
}