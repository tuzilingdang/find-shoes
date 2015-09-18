package com.dao;

import com.model.ShoesCollection;

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
 * ShoesCollection entities. Transaction control of the save(), update() and
 * delete() operations can directly support Spring container-managed
 * transactions or they can be augmented to handle user-managed Spring
 * transactions. Each of these methods provides additional information for how
 * to configure it for the desired type of transaction control.
 * 
 * @see com.model.ShoesCollection
 * @author MyEclipse Persistence Tools
 */
public class ShoesCollectionDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(ShoesCollectionDAO.class);
	// property constants
	public static final String GOODS_ID = "goodsId";
	public static final String USER_ID = "userId";
	public static final String DEFUNCT = "defunct";

	public void save(ShoesCollection transientInstance) {
		log.debug("saving ShoesCollection instance");
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

	public void delete(ShoesCollection persistentInstance) {
		log.debug("deleting ShoesCollection instance");
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

	public ShoesCollection findById(java.lang.Integer id) {
		log.debug("getting ShoesCollection instance with id: " + id);
		try {
			ShoesCollection instance = (ShoesCollection) getSession().get(
					"com.model.ShoesCollection", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(ShoesCollection instance) {
		log.debug("finding ShoesCollection instance by example");
		try {
			List results = getSession()
					.createCriteria("com.model.ShoesCollection")
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
		log.debug("finding ShoesCollection instance with property: "
				+ propertyName + ", value: " + value);
		try {
			String queryString = "from ShoesCollection as model where model."
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
		log.debug("finding all ShoesCollection instances");
		try {
			String queryString = "from ShoesCollection";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ShoesCollection merge(ShoesCollection detachedInstance) {
		log.debug("merging ShoesCollection instance");
		try {
			ShoesCollection result = (ShoesCollection) getSession().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ShoesCollection instance) {
		log.debug("attaching dirty ShoesCollection instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ShoesCollection instance) {
		log.debug("attaching clean ShoesCollection instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	//检查改鞋子是否被用户收藏
			public boolean isCollection(String shoesId,int userId) {
				boolean isCollection = false;
				 log.debug("check is collection by user");
				 try {
					 String queryString = "from ShoesCollection where goodsId = ? and userId = ?";
					 Query queryObject = getSession().createQuery(queryString);
					 queryObject.setParameter(0, shoesId);
					 queryObject.setParameter(1, userId);
					 if (queryObject.list().size()!=0) {
						isCollection = true;
					}		
				} catch (RuntimeException re) {
					log.error("check isCollection failed", re);
					throw re;
				}	 
				 return isCollection;
			}
		
			
	//通过shoesId和userId得到鞋子收藏信息
	public ShoesCollection getShoesColByIds(String shoesId,int userId) {
		ShoesCollection shoesCollection = null;
		 log.debug("getShoesColByIds");
		 try {
				String queryString = "from ShoesCollection where goodsId = ? and userId = ?";
			   	Query queryObject = getSession().createQuery(queryString);
			    queryObject.setParameter(0, shoesId);
				queryObject.setParameter(1, userId);
				shoesCollection = (ShoesCollection)queryObject.list().get(0);
			} catch (RuntimeException re) {
				log.error("getShoesColByIds failed", re);
				throw re;
			}	
			return shoesCollection;
	}

}