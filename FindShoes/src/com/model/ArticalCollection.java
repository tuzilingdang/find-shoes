package com.model;

import java.sql.Timestamp;

/**
 * ArticalCollection entity. @author MyEclipse Persistence Tools
 */
public class ArticalCollection extends AbstractArticalCollection implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ArticalCollection() {
	}

	/** full constructor */
	public ArticalCollection(Integer articalCollectionId, Integer articalId,
			Integer userId, Timestamp time, String defunct) {
		super(articalCollectionId, articalId, userId, time, defunct);
	}

}
