package com.model;

import java.sql.Timestamp;

/**
 * AbstractShoesLikes entity provides the base persistence definition of the
 * ShoesLikes entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractShoesLikes implements java.io.Serializable {

	// Fields

	private Integer shoesLikesId;
	private String goodsId;
	private Integer userId;
	private Timestamp time;
	private String defunct;

	// Constructors

	/** default constructor */
	public AbstractShoesLikes() {
	}

	/** full constructor */
	public AbstractShoesLikes(String goodsId, Integer userId, Timestamp time,
			String defunct) {
		this.goodsId = goodsId;
		this.userId = userId;
		this.time = time;
		this.defunct = defunct;
	}

	// Property accessors

	public Integer getShoesLikesId() {
		return this.shoesLikesId;
	}

	public void setShoesLikesId(Integer shoesLikesId) {
		this.shoesLikesId = shoesLikesId;
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