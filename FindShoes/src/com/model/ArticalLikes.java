package com.model;

import java.sql.Timestamp;

/**
 * ArticalLikes entity. @author MyEclipse Persistence Tools
 */
public class ArticalLikes extends AbstractArticalLikes implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ArticalLikes() {
	}

	/** full constructor */
	public ArticalLikes(Integer articalLikesId, Integer articalId,
			Integer userId, Timestamp time, String defunct) {
		super(articalLikesId, articalId, userId, time, defunct);
	}

}
