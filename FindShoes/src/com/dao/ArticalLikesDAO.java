package com.dao;

import com.model.ArticalLikes;

import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * ArticalLikes entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.model.ArticalLikes
 * @author MyEclipse Persistence Tools
 */
public class ArticalLikesDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(ArticalLikesDAO.class);
	// property constants
	public static final String ARTICAL_ID = "articalId";
	public static final String USER_ID = "userId";
	public static final String DEFUNCT = "defunct";

	public void save(ArticalLikes transientInstance) {
		log.debug("saving ArticalLikes instance");
		try {
			Transaction tran = getSession().beginTransaction();
            getSession().save(transientInstance);
            tran.commit();
            getSession().close();
            log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ArticalLikes persistentInstance) {
		log.debug("deleting ArticalLikes instance");
		try {
			Transaction tran = getSession().beginTransaction();
			getSession().delete(persistentInstance);
		    tran.commit();
			getSession().close();
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ArticalLikes findById(java.lang.Integer id) {
		log.debug("getting ArticalLikes instance with id: " + id);
		try {
			ArticalLikes instance = (ArticalLikes) getSession().get(
					"com.model.ArticalLikes", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ArticalLikes instance) {
		log.debug("finding ArticalLikes instance by example");
		try {
			List results = getSession()
					.createCriteria("com.model.ArticalLikes")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding ArticalLikes instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ArticalLikes as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByArticalId(Object articalId) {
		return findByProperty(ARTICAL_ID, articalId);
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByDefunct(Object defunct) {
		return findByProperty(DEFUNCT, defunct);
	}

	public List findAll() {
		log.debug("finding all ArticalLikes instances");
		try {
			String queryString = "from ArticalLikes";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ArticalLikes merge(ArticalLikes detachedInstance) {
		log.debug("merging ArticalLikes instance");
		try {
			ArticalLikes result = (ArticalLikes) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ArticalLikes instance) {
		log.debug("attaching dirty ArticalLikes instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ArticalLikes instance) {
		log.debug("attaching clean ArticalLikes instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	//检测是否为该用户点赞
	public boolean isLiked(int articleId, int userId) {
		 boolean isliked = false;
		 log.debug("check is liked by user");
		 try {
			 String queryString = "from ArticalLikes where articalId = ? and userId = ?";
			 Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, articleId);
			 queryObject.setParameter(1, userId);
			 if (queryObject.list().size()!=0) {
				isliked = true;
			}		
		} catch (RuntimeException re) {
			log.error("check isLiked failed", re);
			throw re;
		}	 
		 return isliked;
	}
	
	public ArticalLikes getArticleByIds(int articleId,int userId) {
		ArticalLikes articalLikes = null;
		 log.debug("getArticleByIds");
		try {
			String queryString = "from ArticalLikes where articalId = ? and userId = ?";
		   	Query queryObject = getSession().createQuery(queryString);
		    queryObject.setParameter(0, articleId);
			queryObject.setParameter(1, userId);
			articalLikes = (ArticalLikes)queryObject.list().get(0);
		} catch (RuntimeException re) {
			log.error("getArticleByIds failed", re);
			throw re;
		}	
		return articalLikes;
	}
	
}