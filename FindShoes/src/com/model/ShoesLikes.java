package com.model;

import java.sql.Timestamp;

/**
 * ShoesLikes entity. @author MyEclipse Persistence Tools
 */
public class ShoesLikes extends AbstractShoesLikes implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ShoesLikes() {
	}

	/** full constructor */
	public ShoesLikes( String goodsId, Integer userId,
			Timestamp time, String defunct) {
		super( goodsId, userId, time, defunct);
	}

}
