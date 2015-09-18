package com.dao;

import com.model.ArticalLikes;
import com.model.ShoesLikes;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * ShoesLikes entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.ShoesLikes
 * @author MyEclipse Persistence Tools
 */
public class ShoesLikesDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(ShoesLikesDAO.class);
	// property constants
	public static final String GOODS_ID = "goodsId";
	public static final String USER_ID = "userId";
	public static final String DEFUNCT = "defunct";

	public void save(ShoesLikes transientInstance) {
		log.debug("saving ShoesLikes instance");
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

	public void delete(ShoesLikes persistentInstance) {
		log.debug("deleting ShoesLikes instance");
		try {
			Transaction transaction = getSession().beginTransaction();
			getSession().delete(persistentInstance);
			transaction.commit();
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ShoesLikes findById(java.lang.Integer id) {
		log.debug("getting ShoesLikes instance with id: " + id);
		try {
			ShoesLikes instance = (ShoesLikes) getSession().get(
					"com.model.ShoesLikes", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ShoesLikes instance) {
		log.debug("finding ShoesLikes instance by example");
		try {
			List results = getSession().createCriteria("com.model.ShoesLikes")
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
		log.debug("finding ShoesLikes instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from ShoesLikes as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByGoodsId(Object goodsId) {
		return findByProperty(GOODS_ID, goodsId);
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByDefunct(Object defunct) {
		return findByProperty(DEFUNCT, defunct);
	}

	public List findAll() {
		log.debug("finding all ShoesLikes instances");
		try {
			String queryString = "from ShoesLikes";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ShoesLikes merge(ShoesLikes detachedInstance) {
		log.debug("merging ShoesLikes instance");
		try {
			ShoesLikes result = (ShoesLikes) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ShoesLikes instance) {
		log.debug("attaching dirty ShoesLikes instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ShoesLikes instance) {
		log.debug("attaching clean ShoesLikes instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	//检查改鞋子是否被用户点赞
	public boolean isLiked(String shoesId,int userId) {
		boolean isliked = false;
		 log.debug("check is liked by user");
		 try {
			 String queryString = "from ShoesLikes where goodsId = ? and userId = ?";
			 Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, shoesId);
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
	
	//通过shoesId和userId得到鞋子点赞信息
	public ShoesLikes getShoesLikeByIds(String shoesId,int userId) {
		 ShoesLikes shoesLikes = null;
		 log.debug("getShoesLikeByIds");
		 try {
				String queryString = "from ShoesLikes where goodsId = ? and userId = ?";
			   	Query queryObject = getSession().createQuery(queryString);
			    queryObject.setParameter(0, shoesId);
				queryObject.setParameter(1, userId);
				shoesLikes = (ShoesLikes)queryObject.list().get(0);
			} catch (RuntimeException re) {
				log.error("getArticleByIds failed", re);
				throw re;
			}	
			return shoesLikes;
	}
}