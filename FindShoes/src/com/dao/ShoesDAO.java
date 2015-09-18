package com.dao;

import com.dao.ShoesDAO;
import com.model.Image;
import com.model.OnlineStore;
import com.model.Shoes;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A data access object (DAO) providing persistence and search support for Shoes
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see com.model.Shoes
 * @author MyEclipse Persistence Tools
 */

public class ShoesDAO extends BaseHibernateDAO {
	private static final Logger log = LoggerFactory.getLogger(ShoesDAO.class);
	// property constants
	public static final String BRAND = "brand";
	public static final String SHOW_DATE = "showDate";
	public static final String SEASON = "season";
	public static final String LIKE = "like";
	public static final String OCCASION = "occasion";
	public static final String HEEL_HEIGHT = "heelHeight";
	public static final String TOE = "toe";
	public static final String HEEL_STYLE = "heelStyle";
	public static final String UPPER_HEIGHT = "upperHeight";
	public static final String BOOT_HEIGHT = "bootHeight";
	public static final String LEATHER = "leather";
	public static final String SOLE = "sole";
	public static final String PATTERN = "pattern";
	public static final String CRAFT = "craft";
	public static final String BOOT_MATERIAL = "bootMaterial";
	public static final String UPPER_MATERIAL = "upperMaterial";
	public static final String COLOR = "color";
	public static final String HOT_POINT = "hotPoint";
	public static final String FASHION = "fashion";
	public static final String STYLE = "style";
	public static final String INNER_MATERIAL = "innerMaterial";
	public static final String DEFUNCT = "defunct";
	public static final String FLAG = "flag";
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";

	public void save(Shoes transientInstance) {
		log.debug("saving Shoes instance");
		try {
			getSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Shoes persistentInstance) {
		log.debug("deleting Shoes instance");
		try {
			getSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Shoes findById(java.lang.String id) {
		log.debug("getting Shoes instance with id: " + id);
		try {
			Shoes instance = (Shoes) getSession().get("com.model.Shoes", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Shoes instance) {
		log.debug("finding Shoes instance by example");
		try {
			List results = getSession().createCriteria("com.model.Shoes")
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
		log.debug("finding Shoes instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Shoes as model where model."
					+ propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByBrand(Object brand) {
		return findByProperty(BRAND, brand);
	}

	public List findByShowDate(Object showDate) {
		return findByProperty(SHOW_DATE, showDate);
	}

	public List findBySeason(Object season) {
		return findByProperty(SEASON, season);
	}

	public List findByLike(Object like) {
		return findByProperty(LIKE, like);
	}

	public List findByOccasion(Object occasion) {
		return findByProperty(OCCASION, occasion);
	}

	public List findByHeelHeight(Object heelHeight) {
		return findByProperty(HEEL_HEIGHT, heelHeight);
	}

	public List findByToe(Object toe) {
		return findByProperty(TOE, toe);
	}

	public List findByHeelStyle(Object heelStyle) {
		return findByProperty(HEEL_STYLE, heelStyle);
	}

	public List findByUpperHeight(Object upperHeight) {
		return findByProperty(UPPER_HEIGHT, upperHeight);
	}

	public List findByBootHeight(Object bootHeight) {
		return findByProperty(BOOT_HEIGHT, bootHeight);
	}

	public List findByLeather(Object leather) {
		return findByProperty(LEATHER, leather);
	}

	public List findBySole(Object sole) {
		return findByProperty(SOLE, sole);
	}

	public List findByPattern(Object pattern) {
		return findByProperty(PATTERN, pattern);
	}

	public List findByCraft(Object craft) {
		return findByProperty(CRAFT, craft);
	}

	public List findByBootMaterial(Object bootMaterial) {
		return findByProperty(BOOT_MATERIAL, bootMaterial);
	}

	public List findByUpperMaterial(Object upperMaterial) {
		return findByProperty(UPPER_MATERIAL, upperMaterial);
	}

	public List findByColor(Object color) {
		return findByProperty(COLOR, color);
	}

	public List findByHotPoint(Object hotPoint) {
		return findByProperty(HOT_POINT, hotPoint);
	}

	public List findByFashion(Object fashion) {
		return findByProperty(FASHION, fashion);
	}

	public List findByStyle(Object style) {
		return findByProperty(STYLE, style);
	}

	public List findByInnerMaterial(Object innerMaterial) {
		return findByProperty(INNER_MATERIAL, innerMaterial);
	}

	public List findByDefunct(Object defunct) {
		return findByProperty(DEFUNCT, defunct);
	}

	public List findByFlag(Object flag) {
		return findByProperty(FLAG, flag);
	}

	public List findAll() {
		log.debug("finding all Shoes instances");
		try {
			String queryString = "from Shoes";
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Shoes merge(Shoes detachedInstance) {
		log.debug("merging Shoes instance");
		try {
			Shoes result = (Shoes) getSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Shoes instance) {
		log.debug("attaching dirty Shoes instance");
		try {
			getSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Shoes instance) {
		log.debug("attaching clean Shoes instance");
		try {
			getSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
		   //for test
		    public List<Shoes> test() {
		    	log.debug("finding Shoes for test");
		    	try {
		    		String queryString = "from Shoes where brand = ?";
					Query queryObject = getSession().createQuery(queryString);
					queryObject.setParameter(0, "¹ÅÆæÌìÂ×");
					return queryObject.list();
				} catch (RuntimeException re) {
					log.error("find for test failed", re);		
				    throw re;
				}
			}
}