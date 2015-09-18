package com.model;

import com.dao.ArticalCollectionDAO;
import com.dao.ArticalLikesDAO;

public class showArticle {
       private String isLiked;
       private String isCollection;
       private int numsOfLike;
       private int numsOfCollection;
       private Article article;

	public String getIsLiked() {
		return isLiked;
	}
	public void setIsLiked(String isLiked) {
		this.isLiked = isLiked;
	}
	public String getIsCollection() {
		return isCollection;
	}
	public void setIsCollection(String isCollection) {
		this.isCollection = isCollection;
	}
	public int getNumsOfLike() {
		return numsOfLike;
	}
	public void setNumsOfLike(int numsOfLike) {
		this.numsOfLike = numsOfLike;
	}
	public int getNumsOfCollection() {
		return numsOfCollection;
	}
	public void setNumsOfCollection(int numsOfCollection) {
		this.numsOfCollection = numsOfCollection;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
    
	public showArticle generateClass(Article a ,int userId) {
		showArticle aShowArticle = new showArticle();
		aShowArticle.article = a;
		ArticalCollectionDAO articalCollectionDAO = new ArticalCollectionDAO();
		ArticalLikesDAO articalLikesDAO = new ArticalLikesDAO();
		//�����Ƿ�Ϊ���û����޺��ղص�����
		if (articalCollectionDAO.isCollection(a.getArticalId(), userId)) {
			aShowArticle.isCollection = "uncollection";
		}else {
			aShowArticle.isCollection = "collection";
		}
		if(articalLikesDAO.isLiked(a.getArticalId(), userId))
		{
			aShowArticle.isLiked = "unlike";
		}else {
			aShowArticle.isLiked = "like";
		}
		//���ø����µĵ��޺��ղ�����
		aShowArticle.numsOfCollection = articalCollectionDAO.findByProperty("articalId", a.getArticalId()).size();
		aShowArticle.numsOfLike = articalLikesDAO.findByProperty("articalId", a.getArticalId()).size();
		return aShowArticle;
	}
}
