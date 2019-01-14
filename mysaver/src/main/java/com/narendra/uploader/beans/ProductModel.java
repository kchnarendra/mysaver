package com.narendra.uploader.beans;

import java.sql.Date;
	
public class ProductModel {
	
	private Long id;
	private String p_category;
	private String p_name;
	private String p_code;
	private Long p_price;

	public ProductModel() {
		
	}

	public ProductModel(Long id, String p_category, String p_name, String p_code, Long p_price) {
		super();
		this.id = id;
		this.p_category = p_category;
		this.p_name = p_name;
		this.p_code = p_code;
		this.p_price = p_price;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public Long getP_price() {
		return p_price;
	}

	public void setP_price(Long p_price) {
		this.p_price = p_price;
	}
	
	
}
