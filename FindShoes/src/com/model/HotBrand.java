package com.model;

/**
 * HotBrand entity. @author MyEclipse Persistence Tools
 */
public class HotBrand extends AbstractHotBrand implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public HotBrand() {
	}

	/** minimal constructor */
	public HotBrand(Integer userId, String brandName) {
		super(userId, brandName);
	}

	/** full constructor */
	public HotBrand(Integer userId, String brandName, Integer count) {
		super(userId, brandName, count);
	}

}
