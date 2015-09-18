package com.dao;

import com.model.HotBrand;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for
 * HotBrand entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.model.HotBrand
 * @author MyEclipse Persistence Tools
 */
public class HotBrandDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory
			.getLogger(HotBrandDAO.class);
	// property constants
	public static final String USER_ID = "userId";
	public static final String BRAND_NAME = "brandName";
	public static final String NUMS = "nums";

	public void save(HotBrand transientInstance) {
		log.debug("saving HotBrand instance");
		try {
			Transaction transaction = getSession().beginTransaction();
            getSession().save(transientInstance);
            log.debug("save successful");
            transaction.commit();
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(HotBrand persistentInstance) {
		log.debug("deleting HotBrand instance");
		try {
			Transaction transaction = getSession().beginTransaction();
            getSession().delete(persistentInstance);
            log.debug("delete successful");
            transaction.commit();
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public HotBrand findById(java.lang.Integer id) {
		log.debug("getting HotBrand instance with id: " + id);
		try {
			HotBrand instance = (HotBrand) getSession().get(
					"com.model.HotBrand", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(HotBrand instance) {
		log.debug("finding HotBrand instance by example");
		try {
			List results = getSession().createCriteria("com.model.HotBrand")
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
		log.debug("finding HotBrand instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from HotBrand as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}

	public List findByBrandName(Object brandName) {
		return findByProperty(BRAND_NAME, brandName);
	}

	public List findByNums(Object nums) {
		return findByProperty(NUMS, nums);
	}

	public List findAll() {
		log.debug("finding all HotBrand instances");
		try {
			String queryString = "from HotBrand";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public HotBrand merge(HotBrand detachedInstance) {
		log.debug("merging HotBrand instance");
		try {
			HotBrand result = (HotBrand) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(HotBrand instance) {
		log.debug("attaching dirty HotBrand instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(HotBrand instance) {
		log.debug("attaching clean HotBrand instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
	
	  public void addHotBrand(int userId,String brandName) {
			log.debug("add hotbrand");
			try {
				String queryString = "from HotBrand where userId = ? and brandName = ?";
				Query queryObject = getSession().createQuery(queryString);
				queryObject.setParameter(0, userId);
				queryObject.setParameter(1, brandName);
				int result = queryObject.list().size();
				//如果数据库里没有该用户的对 改品牌的记录，则写入；若有则将count加一
				if (result==0) {
					HotBrand hotBrand = new HotBrand();
					hotBrand.setBrandName(brandName);
					hotBrand.setUserId(userId);
					hotBrand.setNums(1);
					save(hotBrand);
				}else{
					List<HotBrand> list = queryObject.list();
					HotBrand hotBrand = list.get(0);
					hotBrand.setNums(hotBrand.getNums()+1);
					save(hotBrand);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
	    
	    
	    //得到该用户的八个点击最多的品牌
	    public List<HotBrand> getHotBrandName(int userId) {
			log.debug("get hot brand name ");
			     List<HotBrand> list = new ArrayList<HotBrand>() ;	    	     
			try {
				String queryString = "from HotBrand where userId = ? ORDER BY nums desc";
				Query queryObject  = getSession().createQuery(queryString);
				queryObject.setParameter(0, userId);
				queryObject.setMaxResults(8);
				list = queryObject.list();	
				System.out.println(list.size());
				 
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			return list;	
		}
}