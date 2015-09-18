package com.model;

/**
 * AbstractHotBrand entity provides the base persistence definition of the
 * HotBrand entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractHotBrand implements java.io.Serializable {

	// Fields

	private Integer hotBrandId;
	private Integer userId;
	private String brandName;
	private Integer nums;

	// Constructors

	/** default constructor */
	public AbstractHotBrand() {
	}

	/** minimal constructor */
	public AbstractHotBrand(Integer userId, String brandName) {
		this.userId = userId;
		this.brandName = brandName;
	}

	/** full constructor */
	public AbstractHotBrand(Integer userId, String brandName, Integer nums) {
		this.userId = userId;
		this.brandName = brandName;
		this.nums = nums;
	}

	// Property accessors

	public Integer getHotBrandId() {
		return this.hotBrandId;
	}

	public void setHotBrandId(Integer hotBrandId) {
		this.hotBrandId = hotBrandId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public Integer getNums() {
		return this.nums;
	}

	public void setNums(Integer nums) {
		this.nums = nums;
	}

}