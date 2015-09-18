package com.model;

import java.sql.Timestamp;

/**
 * ShoesCollection entity. @author MyEclipse Persistence Tools
 */
public class ShoesCollection extends AbstractShoesCollection implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ShoesCollection() {
	}

	/** full constructor */
	public ShoesCollection(String goodsId,
			Integer userId, Timestamp time, String defunct) {
		super(goodsId, userId, time, defunct);
	}

}
