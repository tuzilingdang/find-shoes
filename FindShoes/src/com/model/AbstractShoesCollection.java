package com.model;

import java.sql.Timestamp;

/**
 * AbstractShoesCollection entity provides the base persistence definition of
 * the ShoesCollection entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractShoesCollection implements java.io.Serializable {

	// Fields

	private Integer shoesCollectionId;
	private String goodsId;
	private Integer userId;
	private Timestamp time;
	private String defunct;

	// Constructors

	/** default constructor */
	public AbstractShoesCollection() {
	}

	/** full constructor */
	public AbstractShoesCollection(String goodsId, Integer userId,
			Timestamp time, String defunct) {
		this.goodsId = goodsId;
		this.userId = userId;
		this.time = time;
		this.defunct = defunct;
	}

	// Property accessors

	public Integer getShoesCollectionId() {
		return this.shoesCollectionId;
	}

	public void setShoesCollectionId(Integer shoesCollectionId) {
		this.shoesCollectionId = shoesCollectionId;
	}

	public String getGoodsId() {
		return this.goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getDefunct() {
		return this.defunct;
	}

	public void setDefunct(String defunct) {
		this.defunct = defunct;
	}

}