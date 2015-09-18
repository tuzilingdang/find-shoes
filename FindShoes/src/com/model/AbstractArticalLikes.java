package com.model;

import java.sql.Timestamp;

/**
 * AbstractArticalLikes entity provides the base persistence definition of the
 * ArticalLikes entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractArticalLikes implements java.io.Serializable {

	// Fields

	private Integer articalLikesId;
	private Integer articalId;
	private Integer userId;
	private Timestamp time;
	private String defunct;

	// Constructors

	/** default constructor */
	public AbstractArticalLikes() {
	}

	/** full constructor */
	public AbstractArticalLikes(Integer articalLikesId, Integer articalId,
			Integer userId, Timestamp time, String defunct) {
		this.articalLikesId = articalLikesId;
		this.articalId = articalId;
		this.userId = userId;
		this.time = time;
		this.defunct = defunct;
	}

	// Property accessors

	public Integer getArticalLikesId() {
		return this.articalLikesId;
	}

	public void setArticalLikesId(Integer articalLikesId) {
		this.articalLikesId = articalLikesId;
	}

	public Integer getArticalId() {
		return this.articalId;
	}

	public void setArticalId(Integer articalId) {
		this.articalId = articalId;
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