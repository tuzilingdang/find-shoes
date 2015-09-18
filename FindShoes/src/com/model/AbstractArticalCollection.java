package com.model;

import java.sql.Timestamp;

/**
 * AbstractArticalCollection entity provides the base persistence definition of
 * the ArticalCollection entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractArticalCollection implements java.io.Serializable {

	// Fields

	private Integer articalCollectionId;
	private Integer articalId;
	private Integer userId;
	private Timestamp time;
	private String defunct;

	// Constructors

	/** default constructor */
	public AbstractArticalCollection() {
	}

	/** full constructor */
	public AbstractArticalCollection(Integer articalCollectionId,
			Integer articalId, Integer userId, Timestamp time, String defunct) {
		this.articalCollectionId = articalCollectionId;
		this.articalId = articalId;
		this.userId = userId;
		this.time = time;
		this.defunct = defunct;
	}

	// Property accessors

	public Integer getArticalCollectionId() {
		return this.articalCollectionId;
	}

	public void setArticalCollectionId(Integer articalCollectionId) {
		this.articalCollectionId = articalCollectionId;
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